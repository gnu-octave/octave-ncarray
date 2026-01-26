---
layout: "default"
permalink: "/functions/10_ncreadtime/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - ncreadtime"
category: "Test script"
func_name: "ncreadtime"
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
<dt class="deftypefn def-line" id="index-ncreadtime_0028filename_002c"><span><code class="def-type"><var class="var">t</var> =</code> <strong class="def-name">ncreadtime(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>)</code></span></dt>
<dd><p>Read a time variable as serial day number.
</p> 
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">filename</var> - netcdf filename 
</p>
<p><var class="var">varname</var> - time variable called varname.
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">t</var> serial day number (days since 31 December 1 BC, as datenum).
 </p></dd></dl>