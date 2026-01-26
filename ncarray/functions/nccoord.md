---
layout: "default"
permalink: "/functions/7_nccoord/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - nccoord"
category: "Test script"
func_name: "nccoord"
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
<dt class="deftypefn def-line" id="index-nccoord_0028filename_002c"><span><code class="def-type">[<var class="var">dims</var>, <var class="var">coord</var>] =</code> <strong class="def-name">nccoord(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>)</code></span></dt>
<dd><p>Get coordinates of the variable varname in the
 netcdf file called filename. The netcdf is assumed to 
 follow the CF convention.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">filename</var> - netcdf filename
</p>
<p><var class="var">varname</var> - variable name
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">dims</var> - a cell-array of the dimensions of varname
</p>
<p><var class="var">coord</var> - an array of structures with the field &rsquo;name&rsquo;
 for the variable name, &rsquo;dims&rsquo; with a cell-array of the
 netcdf dimensions, the units and NetCDF-CF standard name.
</p>
<p>coord is an empty structure if no coordinate information have been
 found.
 </p></dd></dl>