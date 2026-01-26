---
layout: "default"
permalink: "/functions/7_ncArray/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - ncArray"
category: "Test script"
func_name: "ncArray"
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
<dt class="deftypefn def-line" id="index-ncArray_0028filename_002c"><span><code class="def-type"><var class="var">V</var> =</code> <strong class="def-name">ncArray(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>)</code></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-ncArray_0028filename_002c-1"><span><code class="def-type"><var class="var">V</var> =</code> <strong class="def-name">ncArray(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>, <var class="var">propertyname</var>, <var class="var">propertyvalue</var>, &hellip;)</code></span></dt>
<dd><p>Create a ncArray that can be accessed as a normal array.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">filename</var> - filename to read
</p>
<p><var class="var">varname</var> - variable name to read from file
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - property name and value pairs.
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">V</var> - a ncArray of the read file.
</p>
<p>For read access filename can be compressed if it has the extensions
 &quot;.gz&quot; or &quot;.bz2&quot;. It use the function cache_decompress to cache to
 decompressed files.
</p>
<p>Data is loaded by ncread and saved by ncwrite. Values equal to _FillValue
 are thus replaced by NaN and the scaling (add_offset and
 scale_factor) is applied during loading and saving.
</p>
<h4 class="subsubheading" id="Example"><span>Example</span></h4>

<p>Loading the variable (assuming V is 3 dimensional):
 </p><div class="example">
<pre class="example-preformatted"> x = V(1,1,1);   % load element 1,1,1
 x = V(:,:,:);   % load the complete array
 x = V();  x = full(V)  % loads also the complete array
 </pre></div>

<p>Saving data in the netcdf file:
 </p><div class="example">
<pre class="example-preformatted"> V(1,1,1) = x;   % save x in element 1,1,1
 V(:,:,:) = x;
 </pre></div>

<p>Attributes
 </p><div class="example">
<pre class="example-preformatted"> units = V.units; % get attribute called &quot;units&quot;
 V.units = 'degree C'; % set attributes;
 </pre></div>

<p>Note: use the &rsquo;.()&rsquo; notation if the attribute has a leading underscore 
 (due to a limitation in the matlab parser):
</p>
<div class="example">
<pre class="example-preformatted"> V.('_someStrangeAttribute') = 123;
 </pre></div>


<p><strong class="strong">See also:</strong> cache_decompress, ncCatArray.
 Web: http://modb.oce.ulg.ac.be/mediawiki/index.php/ncArray
 </p></dd></dl>