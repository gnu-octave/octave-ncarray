---
layout: "default"
permalink: "/functions/@ncArray/17_ncArraysubsasgn/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - @ncArray/subsasgn"
category: "Test script"
func_name: "@ncArray/subsasgn"
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
<dt class="deftypefn def-line" id="index-subsasgn_0028A_002c"><span><strong class="def-name">subsasgn(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">idx</var>, <var class="var">rhs</var>)</code></span></dt>
<dd><p>Perform the subscripted assignment operation according to the subscript specified by idx.
</p>
<p>A slice of the NetCDF variable can be saved by using A(index1,index2,...) = rhs;
 </p><h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">A</var> - ncArray value
</p>
<p><var class="var">idx</var> - idx structure
</p>
<p><var class="var">rhs</var> - value to assign
 </p><h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p>None
 </p></dd></dl>