---
layout: "default"
permalink: "/functions/@BaseArray/17_BaseArrayreduce/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - @BaseArray/reduce"
category: "Test script"
func_name: "@BaseArray/reduce"
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
<dt class="deftypefn def-line" id="index-reducce_0028A_002c"><span><code class="def-type">[<var class="var">s</var>, <var class="var">n</var>] =</code> <strong class="def-name">reducce(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">funred</var>, <var class="var">funelem</var>, <var class="var">dim</var>)</code></span></dt>
<dd><p>Reduce array using callback fundtions.
</p>
<p>Reduce array using the function FUNRED applied to all elements 
 after the function FUNELEM was applied along dimension DIM.
 </p></dd></dl>