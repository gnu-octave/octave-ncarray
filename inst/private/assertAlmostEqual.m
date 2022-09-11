## Copyright (C) 2016 Alexander Barth <barth.alexander@gmail.com>
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
## @deftypefn  {} {} assertAlmostEqual()
## Private function
## @end deftypefn

% this function is necessary because of the limitation of matlab

function assertAlmostEqual(observed,expected)

  % tolerance for testing
  tol = 1e-10;

  % for compatibility with matlab which does not have
  % assert (OBSERVED, EXPECTED, TOL)

  assert(max(abs(observed(:) - expected(:))) < tol)

  % for octave prior to 3.8.0
  if isempty(which('isequaln'))
    isequaln = @(x,y) isequalwithequalnans(x,y);
  endif

  % check also NaNS
  assert(isequal(isnan(observed),isnan(expected)))

endfunction
