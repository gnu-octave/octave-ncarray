## Copyright (C) 2012 Alexander Barth <barth.alexander@gmail.com>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; If not, see <http://www.gnu.org/licenses/>.


## -*- texinfo -*-
## @deftypefn  {} {@var{V} =} ncBaseArray(@var{filename}, @var{varname})
## @deftypefnx  {} {@var{V} =} ncBaseArray(@var{filename}, @var{varname}, @var{propertyname}, @var{propertyvalue})
## create a ncBaseArray that can be accessed as a normal matlab array.
## Ths object is a helper object. Users should normally call ncArray.
##
## For read access filename can be compressed if it has the extensions
## ".gz", ".bz2" or ".xz". It use the function cache_decompress to cache to
## decompressed files.
##
## Data is loaded by ncread and saved by ncwrite. Values equal to _FillValue
## are thus replaced by NaN and the scaling (add_offset and
## scale_factor) is applied during loading and saving.
##
## @subsubheading Properties:
##   'tooBigToLoad': if tooBigToLoad is set to true, then only the minimum
##   data will be loaded. However this can be quite slow.
##   'vinfo': result from ncinfo can be specified if it is already known.
##
## @subsubheading Examples:
##
## Loading the variable (assuming V is 3 dimensional):
## @example
## x = V(1,1,1);   % load element 1,1,1
## x = V(:,:,:);   % load the complete array
## x = V();  x = full(V)  % loads also the complete array
## @endexample
##
## Saving data in the netcdf file:
## @example
## V(1,1,1) = x;   % save x in element 1,1,1
## V(:,:,:) = x;
## @end example
##
## Attributes
## @example
## units = V.units; % get attribute called "units"
## V.units = 'degree C'; % set attributes;
## @end example
##
## Note: use the '.()' notation if the attribute has a leading underscore 
## (due to a limitation in the matlab parser):
##
## @example
## V.('_someStrangeAttribute') = 123;
## @end example
##
## @seealso {cache_decompress}
## @end deftypefn

function retval = ncBaseArray(filename,varname,varargin)

  self.tooBigToLoad = false;
  self.vinfo = [];
  prop = varargin;

  for i=1:2:length(prop)
    if strcmp(prop{i},'tooBigToLoad')
      self.tooBigToLoad = prop{i+1};
    elseif strcmp(prop{i},'vinfo')
      self.vinfo = prop{i+1};
    endif
  endfor

  self.filename = filename;
  self.varname = varname;
  if isempty(self.vinfo)
    self.vinfo = ncinfo(cached_decompress(filename),varname);
  endif
  self.sz = self.vinfo.Size;

  self.dims = self.vinfo.Dimensions;
  self.nd = length(self.dims); % number of netcdf dimensions

  retval = class(self,'ncBaseArray',BaseArray(self.sz));
endfunction
