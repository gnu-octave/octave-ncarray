---
layout: "default"
permalink: "/functions/11_nctimeunits/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - nctimeunits"
category: "Test script"
func_name: "nctimeunits"
navigation:
- id: "overview"
  name: "Overview"
  url: "/index"
- id: "Functions"
  name: "Function Reference"
  url: "/functions"
- id: "7_ncArray"
  name: "&nbsp;&nbsp;ncArray"
  url: "/functions/#7_ncArray"
  subitems:
- id: "11_ncBaseArray"
  name: "&nbsp;&nbsp;ncBaseArray"
  url: "/functions/#11_ncBaseArray"
  subitems:
- id: "11_Testscript"
  name: "&nbsp;&nbsp;Test script"
  url: "/functions/#11_Testscript"
  subitems:
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
  url: "/manual"
---
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-nctimeunits_0028u_0029"><span><code class="def-type">[<var class="var">t0</var>, <var class="var">f</var>] =</code> <strong class="def-name">nctimeunits(<var class="var">u</var>)</strong></span></dt>
<dd><p>Parse netCDF time unit.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">u</var> - netCDF time unit
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">t0</var> - time offset (days since 31 December 1 BC, as datenum)
</p>
<p><var class="var">f</var> - scaling factor (in days)
</p>
<p>See the netCDF CF convention for the structure of the time units.
 <a class="url" href="http://cfconventions.org/Data/cf-conventions/cf-conventions-1.6/build/cf-conventions.html#time-coordinate">http://cfconventions.org/Data/cf-conventions/cf-conventions-1.6/build/cf-conventions.html#time-coordinate</a>
 and <a class="url" href="http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/CDM/CalendarDateTime.html">http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/CDM/CalendarDateTime.html</a>
 </p></dd></dl>