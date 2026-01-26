---
layout: "default"
permalink: "/functions/@ncArray/16_ncArraysubsref/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - @ncArray/subsref"
category: "Test script"
func_name: "@ncArray/subsref"
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
<dt class="deftypefn def-line" id="index-subsref_0028A_002c"><span><code class="def-type"><var class="var">out</var> =</code> <strong class="def-name">subsref(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">idx</var>)</code></span></dt>
<dd><p>Perform the subscripted element selection operation according to the subscript specified by idx. 
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">A</var> - ncArray value
</p>
<p><var class="var">idx</var> - idx structure
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">out</var> - output value of operation
</p>
<p>A slice of the NetCDF variable can be load by using A(index1,index2,...) and attributes 
 can be loaded by A.attribute_name or A.(&rsquo;attribute_name&rsquo;)
</p>
<p>If index selection is followed by struct selection &rsquo;coord&rsquo;, then the coordinates corresponding to the
 slice are loaded:
</p>
<p>For example, the coordinate of element A(4,3):
 </p><div class="example">
<pre class="example-preformatted"> [lon,lat] = A(4,3).coord;
 </pre></div>
</dd></dl>