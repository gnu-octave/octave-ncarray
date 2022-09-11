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
## @deftypefn  {} {[@var{t0}, @var{f}] =} nctimeunits(@var{u})
## Parse netCDF time unit.
##
## @subsubheading Inputs
## @var{u} - netCDF time unit
##
## @subsubheading Outputs
## @var{t0} - time offset (days since 31 December 1 BC, as datenum)
##
## @var{f} - scaling factor (in days)
##
## See the netCDF CF convention for the structure of the time units.
## @url{http://cfconventions.org/Data/cf-conventions/cf-conventions-1.6/build/cf-conventions.html#time-coordinate}
## and @url{http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/CDM/CalendarDateTime.html}
## @end deftypefn

function [t0,f] = nctimeunits(u)

  % years in days for udunits
  % http://cfconventions.org/Data/cf-conventions/cf-conventions-1.6/build/cf-conventions.html#time-coordinate
  year_in_days =  365.242198781;


  l = strfind(u,'since');

  if length(l) ~= 1
    error(['time units sould expect one "since": "' u '"']);
  endif

  period = strtrim(lower(u(1:l-1)));
  reference_date = strtrim(u(l+6:end));

  if strcmp(period,'millisec') || strcmp(period,'msec')
    f = 1/(24*60*60*1000);
  elseif strcmp(period,'second') || strcmp(period,'seconds') ...
      || strcmp(period,'s') || strcmp(period,'sec')
    f = 1/(24*60*60);
  elseif strcmp(period,'minute') || strcmp(period,'minutes') ...
      || strcmp(period,'min')
    f = 1/(24*60);
  elseif strcmp(period,'hour') || strcmp(period,'hours') ...
      || strcmp(period,'hr')
    f = 1/24;
  elseif strcmp(period,'day') || strcmp(period,'days')
    f = 1;
  elseif strcmp(period,'week') || strcmp(period,'weeks')
    f = 1/(24*60*60*7);
  elseif strcmp(period,'year') || strcmp(period,'years') ...
      strcmp(period,'yr')
    f = year_in_days;
  elseif strcmp(period,'month') || strcmp(period,'months') ...
      strcmp(period,'mon')
    f = year_in_days/12;
  else
    error(['unknown units "' period '"']);
  endif


  if strcmp(reference_date,'1900-01-01 00:00:0.0')
    t0 = datenum(1900,1,1);
  else
    try
      t0 = datenum(reference_date,'yyyy-mm-dd HH:MM:SS');
    catch
      try
        t0 = datenum(reference_date,'yyyy-mm-ddTHH:MM:SS');
      catch    
        try
          t0 = datenum(reference_date,'yyyy-mm-dd');
        catch
          error(['date format is not recogized ' reference_date])
        end_try_catch
      end_try_catch
    end_try_catch
  endif

endfunction
