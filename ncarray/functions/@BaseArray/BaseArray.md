---
layout: "default"
permalink: "/functions/@BaseArray/20_BaseArrayBaseArray/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - @BaseArray/BaseArray"
category: "Test script"
func_name: "@BaseArray/BaseArray"
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
<dt class="deftypefn def-line" id="index-BaseArray_0028SZ_0029"><span><code class="def-type"><var class="var">BA</var> =</code> <strong class="def-name">BaseArray(<var class="var">SZ</var>)</strong></span></dt>
<dd><p>Create a BaseArray of size SZ. BaseArray is an abstract class. 
</p>
<p>Derived classes should implement the methods subsref and subsasgn.
 BaseArray implements several reduction methods such as sum, prod and mean.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">SZ</var> - size of the array.
 SZ should have least two elements.
 </p><h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">BA</var> - a BaseArray object
 </p></dd></dl>