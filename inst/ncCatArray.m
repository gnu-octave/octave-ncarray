## Copyright (C) 2012,2013 Alexander Barth <barth.alexander@gmail.com>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; If not, see <http://www.gnu.org/licenses/>.

## Author: Alexander Barth (barth.alexander@gmail.com)
##

## -*- texinfo -*-
## @deftypefn  {} {@var{C} =} ncCatArray(@var{dim}, @var{filenames}, @var{varname})
## @deftypefnx {} {@var{C} =} ncCatArray(@var{dim}, @var{pattern}, @var{varname})
## @deftypefnx {} {@var{C} =} ncCatArray(@var{dim}, @var{filenamefun}, @var{varname}, @var{range})
## @deftypefnx {} {@var{C} =} ncCatArray(@dots{} @var{propertyname}, @var{properyvalue})
## Create an array that represent a concatenated NetCDF variables.
##
## Create a concatenated array from variables (varname) in a list of
## netcdf files along dimension dim.Individual elements can be accessed by
## subscripts
##
## e.g. C(2,3) and the corrsponding subset of the appropriate file is loaded
##
## @subsubheading Inputs
## @var{dim} - dimensions use for variables
##
## @var{varname} - variable name to load
##
## @var{filenames} - list of filenames as a cell array
##
## @var{pattern} - shell wildcard pattern (e.g. file_*.nc)
##
## @var{filenamefunc} - a function handle where the i-th filename is
## filenamefun(range(i)).
##
## @var{propertyname}, @var{properyvalue} - propery name and value pairs.
##
## @subsubheading Properties
##   'SameAttributes': false or true (default). If SameAttribute is true, 
##     the variables' NetCDF attribute of all files are assumed to be the same.
##     Only the attributes of the first file is loaded in this case.
##
## @subsubheading Outputs
## @var{C} - a concatenated array from the read variables of the files.
##
## @subsubheading Example
## @example
## data = ncCatArray(3,@{'file-20120708.nc','file-20120709.nc'@},'SST')
##
## data = ncCatArray(3,'file-*.nc','SST')
##
## data = ncCatArray(3,@@(t) ['file-' datestr(t,'yyyymmdd') '.nc'],'SST',...
##              datenum(2012,07,08):datenum(2012,07,09));
## @end example
##
## Note: in Octave the glob function is used to determine files matching the
## shell wildcard pattern, while in Matlab rdir is used. The function rdir
## is available from Matlab exchange under BSD license
## (http://www.mathworks.com/matlabcentral/fileexchange/19550).
##
## @seealso {cache_decompress, ncArray}
## @end deftypefn

function data = ncCatArray(dim,pattern,varname,varargin)

  catdimname = '_cat_dim';
  SameAttributes = true;
  range = [];

  [reg, prop] = parseparams(varargin);

  if length(reg) == 1
    range = reg{1};
  endif


  for i = 1:2:length(prop)
    if strcmp(prop{i},'SameAttributes')
      SameAttributes = prop{i+1};
    elseif strcmp(prop{i},'range')
      range = prop{i+1};
    else
      error(['unknown property value ' prop{i}]);
    endif
  endfor

  % file names

  if iscell(pattern)
    filenames = pattern;
    
  elseif ischar(pattern)
    try
      filenames = glob(pattern);
    catch
      try
        d = rdir(pattern);
        filenames = {d(:).name};
      catch
        error(['The function rdir or glob (octave) is not available. '...
               'rdir can be installed from '...
               'http://www.mathworks.com/matlabcentral/fileexchange/19550']);
      end_try_catch
    end_try_catch
    
    if isempty(filenames)
      error('ncArray:nomatch','no file found matching %s',pattern);
    endif
    
  elseif isa(pattern, 'function_handle')
    filenames = cell(1,length(range));
    
    for i=1:length(range)
      filenames{i} = pattern(range(i));
    endfor
  endif

  if isempty(range)
    range = 1:length(filenames);
  endif

  % get all file information
  finfos = cell(length(filenames),1);

  if SameAttributes
    % assume all files have the same ncinfo as the first one
    tmp = ncinfo(cached_decompress(filenames{1}));
    for i=1:length(filenames)
      finfos{i} = tmp;
    endfor
    % octave allows the following, but not matlab
    %finfos(:) = tmp;
  else
    for i=1:length(filenames)
      finfos{i} = ncinfo(cached_decompress(filenames{i}));
    endfor
  endif

  var = arr(dim,filenames,varname,finfos);

  [dims,coord] = nccoord(finfos{1},varname);

  % add new dimension to coord if arrays are contatenated over a new dimension 
  % and if coord information already exist 
  if (dim > length(dims)) && ~isempty(coord)
    % concatenate is new dimension
    dims{dim} = catdimname;
    coord(dim).dims = {catdimname};
    coord(dim).val = range;
    coord(dim).name = catdimname;
  endif

  for i=1:length(coord)

    %test if value is already defined, if yes do nothing
    if isfield(coord(i),'val')
      if ~isempty(coord(i).val) 
        continue
      endif
    endif

    % the number of the dimension might be different
    % find in coord(i).dims the index of the dimension called  dims{dim}
    % for example we concatenate over time, then two situations can arrise
    % the coordinate variable lon can dependent on time (dimc is not empty)
    % or it does not depdent on time (dimc is empty)
    dimc = find(strcmp(coord(i).dims,dims{dim}));
    
    if isempty(dimc)      
      vinfo = varinfo(finfos{1},coord(i).name);
      coord(i).val = ncBaseArray(filenames{1},coord(i).name,'vinfo',vinfo);
    else    
      % coordinates do also depend on the dimension over which we concatenate
      %i,coord(i).name,dimc,dims{dim}
      coord(i).val = arr(dimc,filenames,coord(i).name,finfos);
    endif
    
    %if dim > length(coord(i).dims)
    %    coord(i).dims{dim} = catdimname;
    %end
  endfor

  data = ncArray(var,dims,coord);

endfunction


function CA = arr(dim,filenames,varname,finfos)
  arrays = cell(1,length(filenames));

  for i=1:length(filenames)
    vinfo = varinfo(finfos{i},varname);
    arrays{i} = ncBaseArray(filenames{i},varname,'vinfo',vinfo);
  endfor

  CA = CatArray(dim,arrays);
endfunction

function vinfo = varinfo(fileinfo,varname)
  index = find(strcmp({fileinfo.Variables(:).Name},varname));
  vinfo = fileinfo.Variables(index);
endfunction
