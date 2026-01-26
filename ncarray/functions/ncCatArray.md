---
layout: "default"
permalink: "/functions/10_ncCatArray/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - ncCatArray"
category: "Test script"
func_name: "ncCatArray"
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
<dt class="deftypefn def-line" id="index-ncCatArray_0028dim_002c"><span><code class="def-type"><var class="var">C</var> =</code> <strong class="def-name">ncCatArray(<var class="var">dim</var>,</strong> <code class="def-code-arguments"><var class="var">filenames</var>, <var class="var">varname</var>)</code></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-ncCatArray_0028dim_002c-1"><span><code class="def-type"><var class="var">C</var> =</code> <strong class="def-name">ncCatArray(<var class="var">dim</var>,</strong> <code class="def-code-arguments"><var class="var">pattern</var>, <var class="var">varname</var>)</code></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-ncCatArray_0028dim_002c-2"><span><code class="def-type"><var class="var">C</var> =</code> <strong class="def-name">ncCatArray(<var class="var">dim</var>,</strong> <code class="def-code-arguments"><var class="var">filenamefun</var>, <var class="var">varname</var>, <var class="var">range</var>)</code></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-ncCatArray_0028_002e_002e_002e"><span><code class="def-type"><var class="var">C</var> =</code> <strong class="def-name">ncCatArray(&hellip;</strong> <code class="def-code-arguments"><var class="var">propertyname</var>, <var class="var">properyvalue</var>)</code></span></dt>
<dd><p>Create an array that represent a concatenated NetCDF variables.
</p>
<p>Create a concatenated array from variables (varname) in a list of
 netcdf files along dimension dim.Individual elements can be accessed by
 subscripts
</p>
<p>e.g. C(2,3) and the corrsponding subset of the appropriate file is loaded
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">dim</var> - dimensions use for variables
</p>
<p><var class="var">varname</var> - variable name to load
</p>
<p><var class="var">filenames</var> - list of filenames as a cell array
</p>
<p><var class="var">pattern</var> - shell wildcard pattern (e.g. file_*.nc)
</p>
<p><var class="var">filenamefunc</var> - a function handle where the i-th filename is
 filenamefun(range(i)).
</p>
<p><var class="var">propertyname</var>, <var class="var">properyvalue</var> - propery name and value pairs.
</p>
<h4 class="subsubheading" id="Properties"><span>Properties</span></h4>
<p>&rsquo;SameAttributes&rsquo;: false or true (default). If SameAttribute is true, 
     the variables&rsquo; NetCDF attribute of all files are assumed to be the same.
     Only the attributes of the first file is loaded in this case.
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">C</var> - a concatenated array from the read variables of the files.
</p>
<h4 class="subsubheading" id="Example"><span>Example</span></h4>
<div class="example">
<pre class="example-preformatted"> data = ncCatArray(3,{'file-20120708.nc','file-20120709.nc'},'SST')

 data = ncCatArray(3,'file-*.nc','SST')

 data = ncCatArray(3,@(t) ['file-' datestr(t,'yyyymmdd') '.nc'],'SST',...
              datenum(2012,07,08):datenum(2012,07,09));
 </pre></div>

<p>Note: in Octave the glob function is used to determine files matching the
 shell wildcard pattern, while in Matlab rdir is used. The function rdir
 is available from Matlab exchange under BSD license
 (http://www.mathworks.com/matlabcentral/fileexchange/19550).
</p>
</dd></dl>