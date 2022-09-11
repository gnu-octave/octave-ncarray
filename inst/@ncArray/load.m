## Copyright (C) 2013 Alexander Barth <barth.alexander@gmail.com>
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
## @deftypefn  {} {[@var{val}, @var{coord1}, @var{coord2} @dots{}] =} load(@var{A}, @var{coord_name1}, @var{range1}, @var{coord_name2}, @var{range2}, @dots{})
## Load a subset of a variable based on range of coordiante variables.
## The names of the coordinates (coord_name1, coord_name2,...) coorespond to the standard_name attribute.
## Only 1-dimensional coordinates are currently supported.
## Time units are converted to "datenum".
##
## @example
## [temp,lon,lat,depth,time] = load(self,'longitude',[0 10],'latitude',[0 10])
## @end example
## @end deftypefn

function varargout = load(self,varargin)

  c = coord(self);

  for i = 1:length(c)
    c(i).v = full(c(i).val);  
    % per default take all data along a dimension
    c(i).index = ':';

    % convert time units
    if ~isempty(strfind(c(i).units,'since'))     
      [t0,f] = nctimeunits(c(i).units);    
      c(i).v = f*double(c(i).v) + t0;
    endif

    % change vertical axis to positive up
    if strcmp(c(i).positive,'down')
      c(i).v = -double(c(i).v);
    endif

    c(i).sub = c(i).v;
  endfor

  % loop over all constraints
  for i = 1:2:length(varargin) 
    name = varargin{i};
  
    j = find(strcmp(name,{c.standard_name}));
    if isempty(j)
      warning(['no coordinate has the standard_name ' name ...
             '. Try to use variable names.']);
  
      j = find(strcmp(name,{c.name}));
      if isempty(j)
        error(['no coordinate has the name ' name '.']);
      endif
    endif
    
    range = varargin{i+1};
  
    if numel(range) == 1
      dist = abs(c(j).v - range);
      [mindist,i] = min(dist);

      %i
      %mindist
      %c(j).v(i)
      %datevec(c(j).v(i))
    else    
      i = find(range(1) < c(j).v & c(j).v < range(end)); 
      i = min(i):max(i);
    endif
  
    c(j).index = i;
    c(j).sub = c(j).v(i);
  endfor

  idx = substruct('()',{c.index});
  %idx
  data = subsref (self,idx);

  varargout = {data,c.sub};


  % i = 1;

  % mask = xr(1) <= x & x <= xr(2);
  % l = find(mask);

  % [ij{:}] = ind2sub(size(mask),l);

  % for j=1:len
  % mins(j) = min(ij{j});
  % maxs(j) = max(ij{j});
endfunction
