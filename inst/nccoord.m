## Copyright (C) 2012, 2013, 2015 Alexander Barth <barth.alexander@gmail.com>
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

## -*- texinfo -*-
## @deftypefn  {} {[@var{dims}, @var{coord}] =} nccoord(@var{filename}, @var{varname})
## Get coordinates of the variable varname in the
## netcdf file called filename. The netcdf is assumed to 
## follow the CF convention.
##
## @subsubheading Inputs
## @var{filename} - netcdf filename
##
## @var{varname} - variable name
##
#@ @subsubheading Outputs
## @var{dims} - a cell-array of the dimensions of varname
##
## @var{coord} - an array of structures with the field 'name'
## for the variable name, 'dims' with a cell-array of the
## netcdf dimensions, the units and NetCDF-CF standard name.
##
## coord is an empty structure if no coordinate information have been
## found.
## @end deftypefn

## TODO: use a predictable order for coord:
## lon, lat, depth, time, ensemble,...

function [dims,coord] = nccoord(filename,varname)

  if ischar(filename)
    finfo = ncinfo(filename);
  else
    finfo = filename;
  endif

  % get variable info
  index = find(strcmp({finfo.Variables(:).Name},varname));
  vinfo = finfo.Variables(index);

  % determine coordinates
  % using CF convention

  dims = {vinfo.Dimensions(:).Name};

  % create empty coord array with the fields name and dims
  coord = struct('name',{},'dims',{},'standard_name',{},...
                 'units',{},'positive',{});

  % check the coordinate attribute
  if ~isempty(vinfo.Attributes)
    index = find(strcmp('coordinates',{vinfo.Attributes(:).Name}));
    if ~isempty(index)
      tmp = strsplit(vinfo.Attributes(index).Value,' ');
    
      % order should not be siginficant
      for i=length(tmp):-1:1
        coord = addcoord(coord,tmp{i},finfo);
      endfor
    endif
  endif

  % check for coordinate dimensions
  for i=1:length(dims)
    % check if variable with the same name than the dimension exist
    index = find(strcmp(dims{i},{finfo.Variables(:).Name}),1);
    if ~isempty(index)
      coord = addcoord(coord,dims{i},finfo);
    endif
  endfor

endfunction

function coord = addcoord(coord,name,finfo)

  % check if coordinate is aleady in the list
  if isempty(find(strcmp(name,{coord(:).name}),1))
    
    % check if name is variable
    index = find(strcmp(name,{finfo.Variables(:).Name}));
    if ~isempty(index)
      vinfo = finfo.Variables(index);
      c.name = name;
      d = vinfo.Dimensions;
      c.dims = {d(:).Name};
      c.standard_name = [];
      c.units = [];
      c.positive = [];
        
      % get standard_name attribute if present
      i = find(strcmp('standard_name',{vinfo.Attributes(:).Name}));
      if ~isempty(i)
        c.standard_name = vinfo.Attributes(i).Value;
      endif

      % get units attribute if present
      i = find(strcmp('units',{vinfo.Attributes(:).Name}));
      if ~isempty(i)
        c.units = vinfo.Attributes(i).Value;
      endif
        
      % get positive attribute if present
      i = find(strcmp('positive',{vinfo.Attributes(:).Name}));
      if ~isempty(i)
        c.positive = vinfo.Attributes(i).Value;
      endif

      coord(end+1) = c;
    endif
  endif
endfunction
