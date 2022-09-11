## Copyright (C) 2012-2022 Alexander Barth <barth.alexander@gmail.com>
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

## -*- texinfo -*-
## @deftypefn  {} {@var{t} =} ncreadtime(@var{filename}, @var{varname})
## Read a time variable as serial day number.
## 
## @subsubheading Inputs
## @var{filename} - netcdf filename 
##
## @var{varname} - time variable called varname.
##
## @subsubheading Outputs
## @var{t} serial day number (days since 31 December 1 BC, as datenum).
## @end deftypefn

function t = ncreadtime(filename,varname)

  t = double(ncread(filename,varname));
  units = ncreadatt(filename,varname,'units');

  [t0,f] = nctimeunits(units);

  t = f*t + t0;
endfunction
