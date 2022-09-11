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
## @deftypefn  {} {@var{V} =} ncArray(@var{filename}, @var{varname})
## @deftypefnx {} {@var{V} =} ncArray(@var{filename}, @var{varname}, @var{propertyname}, @var{propertyvalue}, @dots{})
## Create a ncArray that can be accessed as a normal array.
##
## @subsubheading Inputs
## @var{filename} - filename to read
##
## @var{varname} - variable name to read from file
##
## @var{propertyname}, @var{propertyvalue} - property name and value pairs.
##
## @subsubheading Outputs
## @var{V} - a ncArray of the read file.
##
## For read access filename can be compressed if it has the extensions
## ".gz" or ".bz2". It use the function cache_decompress to cache to
## decompressed files.
##
## Data is loaded by ncread and saved by ncwrite. Values equal to _FillValue
## are thus replaced by NaN and the scaling (add_offset and
## scale_factor) is applied during loading and saving.
##
## @subsubheading Example
##
## Loading the variable (assuming V is 3 dimensional):
## @example
## x = V(1,1,1);   % load element 1,1,1
## x = V(:,:,:);   % load the complete array
## x = V();  x = full(V)  % loads also the complete array
## @end example
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
## @seealso{cache_decompress, ncCatArray}
## Web: http://modb.oce.ulg.ac.be/mediawiki/index.php/ncArray
## @end deftypefn

function retval = ncArray(varargin)

  if ischar(varargin{1})
    filename = varargin{1};
    varname = varargin{2};
    var = ncBaseArray(filename,varname);    
    [dims,coord] = nccoord(cached_decompress(filename),varname);
    
    for i=1:length(coord)
        coord(i).val = ncBaseArray(filename,coord(i).name);
    endfor
  else
    var = varargin{1};    
    dims = varargin{2};
    coord = varargin{3};
  endif

  self.var = var;
  self.dims = dims;
  self.nd = length(self.dims);
  self.coord = coord;

  retval = class(self,'ncArray',BaseArray(size(self.var)));

endfunction
