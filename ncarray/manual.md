---
layout: "default"
permalink: "/manual/"
title: "Ncarray Toolkit - Manual"
pkg_name: "ncarray"
version: "1.0.6"
description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
navigation:
- id: "overview"
  name: "Overview"
  url: "/index"
- id: "Functions"
  name: "Function Reference"
  url: "/functions"
- id: "news"
  name: "News"
  url: "/news"
- id: "manual"
  name: "Manual"
- id: "Installing-and-loading-1"
  name: "&nbsp;&nbsp; Installing and loading"
  url: "/manual/#Installing-and-loading-1"
- id: "Basic-Usage-Overview-1"
  name: "&nbsp;&nbsp; Basic Usage Overview"
  url: "/manual/#Basic-Usage-Overview-1"
- id: "Function-Reference-1"
  name: "&nbsp;&nbsp; Function Reference"
  url: "/manual/#Function-Reference-1"
---
<div class="top-level-extent" id="Top">
<h1 class="top" id="Introduction">Introduction</h1>
<p>The NcArray toolkit provides access a single or a collection of
NetCDF files as a multi-dimensional array.
</p>
<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>
<div class="contents">
<ul class="toc-numbered-mark">
  <li><a id="toc-Installing-and-loading" href="#Installing-and-loading">1 Installing and loading</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-Online-Direct-install" href="#Online-Direct-install">1.1 Online Direct install</a></li>
    <li><a id="toc-Off_002dline-install" href="#Off_002dline-install">1.2 Off-line install</a></li>
    <li><a id="toc-Loading" href="#Loading">1.3 Loading</a></li>
  </ul></li>
  <li><a id="toc-Basic-Usage-Overview" href="#Basic-Usage-Overview">2 Basic Usage Overview</a></li>
  <li><a id="toc-Function-Reference" href="#Function-Reference">3 Function Reference</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-ncArray" href="#ncArray">3.1 ncArray</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040ncArray_002fcoord" href="#g_t_0040ncArray_002fcoord">3.1.1 @ncArray/coord</a></li>
      <li><a id="toc-_0040ncArray_002fsubsasgn" href="#g_t_0040ncArray_002fsubsasgn">3.1.2 @ncArray/subsasgn</a></li>
      <li><a id="toc-_0040ncArray_002fsubsref" href="#g_t_0040ncArray_002fsubsref">3.1.3 @ncArray/subsref</a></li>
      <li><a id="toc-cached_005fdecompress" href="#cached_005fdecompress">3.1.4 cached_decompress</a></li>
      <li><a id="toc-ncArray-1" href="#ncArray-2">3.1.5 ncArray</a></li>
      <li><a id="toc-ncCatArray" href="#ncCatArray">3.1.6 ncCatArray</a></li>
      <li><a id="toc-nccoord" href="#nccoord">3.1.7 nccoord</a></li>
      <li><a id="toc-ncreadtime" href="#ncreadtime">3.1.8 ncreadtime</a></li>
      <li><a id="toc-nctimeunits" href="#nctimeunits">3.1.9 nctimeunits</a></li>
    </ul></li>
    <li><a id="toc-ncBaseArray" href="#ncBaseArray">3.2 ncBaseArray</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-_0040BaseArray_002fBaseArray" href="#g_t_0040BaseArray_002fBaseArray">3.2.1 @BaseArray/BaseArray</a></li>
      <li><a id="toc-_0040BaseArray_002fend" href="#g_t_0040BaseArray_002fend">3.2.2 @BaseArray/end</a></li>
      <li><a id="toc-_0040BaseArray_002ffull" href="#g_t_0040BaseArray_002ffull">3.2.3 @BaseArray/full</a></li>
      <li><a id="toc-_0040BaseArray_002fisnumeric" href="#g_t_0040BaseArray_002fisnumeric">3.2.4 @BaseArray/isnumeric</a></li>
      <li><a id="toc-_0040BaseArray_002fmax" href="#g_t_0040BaseArray_002fmax">3.2.5 @BaseArray/max</a></li>
      <li><a id="toc-_0040BaseArray_002fmean" href="#g_t_0040BaseArray_002fmean">3.2.6 @BaseArray/mean</a></li>
      <li><a id="toc-_0040BaseArray_002fmin" href="#g_t_0040BaseArray_002fmin">3.2.7 @BaseArray/min</a></li>
      <li><a id="toc-_0040BaseArray_002fmoment" href="#g_t_0040BaseArray_002fmoment">3.2.8 @BaseArray/moment</a></li>
      <li><a id="toc-_0040BaseArray_002fnumel" href="#g_t_0040BaseArray_002fnumel">3.2.9 @BaseArray/numel</a></li>
      <li><a id="toc-_0040BaseArray_002fprod" href="#g_t_0040BaseArray_002fprod">3.2.10 @BaseArray/prod</a></li>
      <li><a id="toc-_0040BaseArray_002freduce" href="#g_t_0040BaseArray_002freduce">3.2.11 @BaseArray/reduce</a></li>
      <li><a id="toc-_0040BaseArray_002fsize" href="#g_t_0040BaseArray_002fsize">3.2.12 @BaseArray/size</a></li>
      <li><a id="toc-_0040BaseArray_002fstd" href="#g_t_0040BaseArray_002fstd">3.2.13 @BaseArray/std</a></li>
      <li><a id="toc-_0040BaseArray_002fsum" href="#g_t_0040BaseArray_002fsum">3.2.14 @BaseArray/sum</a></li>
      <li><a id="toc-_0040BaseArray_002fsumsq" href="#g_t_0040BaseArray_002fsumsq">3.2.15 @BaseArray/sumsq</a></li>
      <li><a id="toc-_0040BaseArray_002fvar" href="#g_t_0040BaseArray_002fvar">3.2.16 @BaseArray/var</a></li>
    </ul></li>
    <li><a id="toc-Test-script" href="#Test-script">3.3 Test script</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-test_005fncarray" href="#test_005fncarray">3.3.1 test_ncarray</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-GNU-General-Public-License" href="#Copying">Appendix A GNU General Public License</a></li>
  <li><a id="toc-Index" href="#Index" rel="index">Index</a></li>
</ul>
</div>
</div>
<hr>
<div class="chapter-level-extent" id="Installing-and-loading">
<h2 class="chapter" id="Installing-and-loading-1">1 Installing and loading</h2>
<a class="index-entry-id" id="index-Installing-and-loading"></a>
<p>The toolkit must be installed and then loaded to be used.
</p>
<p>It can be installed in <abbr class="acronym">GNU</abbr> Octave directly from octave-forge,
or can be installed in an off-line mode via a downloaded tarball.
</p>
<p>The toolkit must be then be loaded once per each <abbr class="acronym">GNU</abbr> Octave session in order to use its functionality.
</p>
<p>The toolkit requires the statistics package and the netcdf package to be installed ebfore installing the 
ncArray toolkit.
</p>
<p>To verify the required packages are installed run:
</p><div class="example">
<pre class="example-preformatted">pkg list netcdf
pkg statistics
</pre></div>
<p>Install the required toolkits if they are not installed before installing the ncarray toolkit.
</p>
<div class="section-level-extent" id="Online-Direct-install">
<h3 class="section">1.1 Online Direct install</h3>
<a class="index-entry-id" id="index-Online-install"></a>
<p>With an internet connection available, the toolkit can be installed from
octave-forge using the following command within <abbr class="acronym">GNU</abbr> Octave:
</p>
<div class="example">
<pre class="example-preformatted">pkg install -forge ncarray
</pre></div>
<p>The latest released version of the toolkit will be downloaded and installed.
</p>
</div>
<div class="section-level-extent" id="Off_002dline-install">
<h3 class="section">1.2 Off-line install</h3>
<a class="index-entry-id" id="index-Off_002dline-install"></a>
<p>With the NcArray toolkit package already downloaded, and in the current directory when running
<abbr class="acronym">GNU</abbr> Octave, the package can be installed using the following command within <abbr class="acronym">GNU</abbr> Octave:
</p>
<div class="example">
<pre class="example-preformatted">pkg install ncarray-1.0.6.tar.gz
</pre></div>
</div>
<div class="section-level-extent" id="Loading">
<h3 class="section">1.3 Loading</h3>
<a class="index-entry-id" id="index-Loading"></a>
<p>Regardless of the method of installing the toolkit, in order to use its functions,
the toolkit must be loaded using the pkg load command:
</p>
<div class="example">
<pre class="example-preformatted">pkg load ncarray
</pre></div>
<p>The toolkit must be loaded on each <abbr class="acronym">GNU</abbr> Octave session.
</p>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Basic-Usage-Overview">
<h2 class="chapter" id="Basic-Usage-Overview-1">2 Basic Usage Overview</h2>
<a class="index-entry-id" id="index-Basic-Usage-Overview"></a>
<h4 class="subheading" id="Using-ncArray">Using ncArray</h4>
<p>Create a array object:
</p><div class="example">
<pre class="example-preformatted">SST = ncArray('file1.nc','SST');
</pre></div>
<p>Load / access the file as an array
</p><div class="example">
<pre class="example-preformatted"># load the whole file
data = SST(:,:,:);
# Load a single value
data = SST(3,2,1);
</pre></div>
<p>Get the attrubute &rsquo;units&rsquo;
</p><div class="example">
<pre class="example-preformatted">units = SST.units;
</pre></div>
<h4 class="subheading" id="Using-ncCatArray">Using ncCatArray</h4>
<p>Concatentate files over the 3rd dimention
</p><div class="example">
<pre class="example-preformatted">SST = ncCatArray(3,{'file1.nc','file2.nc','file3.nc'},'SST');
</pre></div>
<p>Load / access the file as an array
</p><div class="example">
<pre class="example-preformatted"># load all the files file
data = SST(:,:,:);
# Load a single value from the 3rd file
data = SST(1,2,3);
</pre></div>
<hr>
</div>
<div class="chapter-level-extent" id="Function-Reference">
<h2 class="chapter" id="Function-Reference-1">3 Function Reference</h2>
<a class="index-entry-id" id="index-Function-Reference"></a>
<p>The functions currently available in the toolkit are described below;
</p>
<hr>
<div class="section-level-extent" id="ncArray">
<h3 class="section" id="ncArray-1">3.1 ncArray</h3>
<a class="index-entry-id" id="index-ncArray"></a>
<div class="subsection-level-extent" id="g_t_0040ncArray_002fcoord">
<h4 class="subsection">3.1.1 @ncArray/coord</h4>
<a class="index-entry-id" id="index-coord"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-coord_0028A_0029"><span><code class="def-type"><var class="var">c</var> =</code> <strong class="def-name">coord(<var class="var">A</var>)</strong></span></dt>
<dd><p>Get a array of structures with the coordinate of ncArray A.
</p><h4 class="subsubheading" id="Inputs">Inputs</h4>
<p><var class="var">A</var> - ncArray value
</p><h4 class="subsubheading" id="Outputs">Outputs</h4>
<p><var class="var">c</var> - array of coordinates
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ncArray_002fsubsasgn">
<h4 class="subsection">3.1.2 @ncArray/subsasgn</h4>
<a class="index-entry-id" id="index-subsasgn"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-subsasgn_0028A_002c"><span><strong class="def-name">subsasgn(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">idx</var>, <var class="var">rhs</var>)</code></span></dt>
<dd><p>Perform the subscripted assignment operation according to the subscript specified by idx.
</p>
<p>A slice of the NetCDF variable can be saved by using A(index1,index2,...) = rhs;
</p><h4 class="subsubheading" id="Inputs-1">Inputs</h4>
<p><var class="var">A</var> - ncArray value
</p>
<p><var class="var">idx</var> - idx structure
</p>
<p><var class="var">rhs</var> - value to assign
</p><h4 class="subsubheading" id="Outputs-1">Outputs</h4>
<p>None
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040ncArray_002fsubsref">
<h4 class="subsection">3.1.3 @ncArray/subsref</h4>
<a class="index-entry-id" id="index-subsref"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-subsref_0028A_002c"><span><code class="def-type"><var class="var">out</var> =</code> <strong class="def-name">subsref(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">idx</var>)</code></span></dt>
<dd><p>Perform the subscripted element selection operation according to the subscript specified by idx.
</p>
<h4 class="subsubheading" id="Inputs-2">Inputs</h4>
<p><var class="var">A</var> - ncArray value
</p>
<p><var class="var">idx</var> - idx structure
</p>
<h4 class="subsubheading" id="Outputs-2">Outputs</h4>
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
</div>
<div class="subsection-level-extent" id="cached_005fdecompress">
<h4 class="subsection">3.1.4 cached_decompress</h4>
<a class="index-entry-id" id="index-cached_005fdecompress"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-cached_005fdecompress_0028filename_0029"><span><code class="def-type"><var class="var">fname</var> =</code> <strong class="def-name">cached_decompress(<var class="var">filename</var>)</strong></span></dt>
<dd><p>Decompress a file using a cache.
</p>
<h4 class="subsubheading" id="Inputs-3">Inputs</h4>
<p><var class="var">filename</var>: name of the file which is possibly compressed
</p>
<h4 class="subsubheading" id="Outputs-3">Outputs</h4>
<p><var class="var">fname</var>: the filename of the uncompressed file
</p>
<h4 class="subsubheading" id="Global-variables">Global variables</h4>
<p>CACHED_DECOMPRESS_DIR (default is the result of tempname)
    cache directory of decompressed files.
</p>
<p>CACHED_DECOMPRESS_LOG_FID (default 1): file id for log message
</p>
<p>CACHED_DECOMPRESS_MAX_SIZE (default 1e10): maximum size of cache in bytes.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="ncArray-2">
<h4 class="subsection">3.1.5 ncArray</h4>
<a class="index-entry-id" id="index-ncArray-1"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-ncArray_0028filename_002c"><span><code class="def-type"><var class="var">V</var> =</code> <strong class="def-name">ncArray(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>)</code></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-ncArray_0028filename_002c-1"><span><code class="def-type"><var class="var">V</var> =</code> <strong class="def-name">ncArray(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>, <var class="var">propertyname</var>, <var class="var">propertyvalue</var>, &hellip;)</code></span></dt>
<dd><p>Create a ncArray that can be accessed as a normal array.
</p>
<h4 class="subsubheading" id="Inputs-4">Inputs</h4>
<p><var class="var">filename</var> - filename to read
</p>
<p><var class="var">varname</var> - variable name to read from file
</p>
<p><var class="var">propertyname</var>, <var class="var">propertyvalue</var> - property name and value pairs.
</p>
<h4 class="subsubheading" id="Outputs-4">Outputs</h4>
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
<h4 class="subsubheading" id="Example">Example</h4>
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
</div>
<div class="subsection-level-extent" id="ncCatArray">
<h4 class="subsection">3.1.6 ncCatArray</h4>
<a class="index-entry-id" id="index-ncCatArray"></a>
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
<h4 class="subsubheading" id="Inputs-5">Inputs</h4>
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
<h4 class="subsubheading" id="Properties">Properties</h4>
<p>&rsquo;SameAttributes&rsquo;: false or true (default). If SameAttribute is true,
     the variables&rsquo; NetCDF attribute of all files are assumed to be the same.
     Only the attributes of the first file is loaded in this case.
</p>
<h4 class="subsubheading" id="Outputs-5">Outputs</h4>
<p><var class="var">C</var> - a concatenated array from the read variables of the files.
</p>
<h4 class="subsubheading" id="Example-1">Example</h4>
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
<p><strong class="strong">See also:</strong> cache_decompress, ncArray.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="nccoord">
<h4 class="subsection">3.1.7 nccoord</h4>
<a class="index-entry-id" id="index-nccoord"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-nccoord_0028filename_002c"><span><code class="def-type">[<var class="var">dims</var>, <var class="var">coord</var>] =</code> <strong class="def-name">nccoord(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>)</code></span></dt>
<dd><p>Get coordinates of the variable varname in the
 netcdf file called filename. The netcdf is assumed to
 follow the CF convention.
</p>
<h4 class="subsubheading" id="Inputs-6">Inputs</h4>
<p><var class="var">filename</var> - netcdf filename
</p>
<p><var class="var">varname</var> - variable name
</p>
<h4 class="subsubheading" id="Outputs-6">Outputs</h4>
<p><var class="var">dims</var> - a cell-array of the dimensions of varname
</p>
<p><var class="var">coord</var> - an array of structures with the field &rsquo;name&rsquo;
 for the variable name, &rsquo;dims&rsquo; with a cell-array of the
 netcdf dimensions, the units and NetCDF-CF standard name.
</p>
<p>coord is an empty structure if no coordinate information have been
 found.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="ncreadtime">
<h4 class="subsection">3.1.8 ncreadtime</h4>
<a class="index-entry-id" id="index-ncreadtime"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-ncreadtime_0028filename_002c"><span><code class="def-type"><var class="var">t</var> =</code> <strong class="def-name">ncreadtime(<var class="var">filename</var>,</strong> <code class="def-code-arguments"><var class="var">varname</var>)</code></span></dt>
<dd><p>Read a time variable as serial day number.
</p>
<h4 class="subsubheading" id="Inputs-7">Inputs</h4>
<p><var class="var">filename</var> - netcdf filename
</p>
<p><var class="var">varname</var> - time variable called varname.
</p>
<h4 class="subsubheading" id="Outputs-7">Outputs</h4>
<p><var class="var">t</var> serial day number (days since 31 December 1 BC, as datenum).
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="nctimeunits">
<h4 class="subsection">3.1.9 nctimeunits</h4>
<a class="index-entry-id" id="index-nctimeunits"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-nctimeunits_0028u_0029"><span><code class="def-type">[<var class="var">t0</var>, <var class="var">f</var>] =</code> <strong class="def-name">nctimeunits(<var class="var">u</var>)</strong></span></dt>
<dd><p>Parse netCDF time unit.
</p>
<h4 class="subsubheading" id="Inputs-8">Inputs</h4>
<p><var class="var">u</var> - netCDF time unit
</p>
<h4 class="subsubheading" id="Outputs-8">Outputs</h4>
<p><var class="var">t0</var> - time offset (days since 31 December 1 BC, as datenum)
</p>
<p><var class="var">f</var> - scaling factor (in days)
</p>
<p>See the netCDF CF convention for the structure of the time units.
<a class="url" href="http://cfconventions.org/Data/cf-conventions/cf-conventions-1.6/build/cf-conventions.html#time-coordinate">http://cfconventions.org/Data/cf-conventions/cf-conventions-1.6/build/cf-conventions.html#time-coordinate</a>
 and <a class="url" href="http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/CDM/CalendarDateTime.html">http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/CDM/CalendarDateTime.html</a>
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="ncBaseArray">
<h3 class="section" id="ncBaseArray-1">3.2 ncBaseArray</h3>
<a class="index-entry-id" id="index-ncBaseArray"></a>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fBaseArray">
<h4 class="subsection">3.2.1 @BaseArray/BaseArray</h4>
<a class="index-entry-id" id="index-BaseArray"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-BaseArray_0028SZ_0029"><span><code class="def-type"><var class="var">BA</var> =</code> <strong class="def-name">BaseArray(<var class="var">SZ</var>)</strong></span></dt>
<dd><p>Create a BaseArray of size SZ. BaseArray is an abstract class.
</p>
<p>Derived classes should implement the methods subsref and subsasgn.
 BaseArray implements several reduction methods such as sum, prod and mean.
</p>
<h4 class="subsubheading" id="Inputs-9">Inputs</h4>
<p><var class="var">SZ</var> - size of the array.
 SZ should have least two elements.
</p><h4 class="subsubheading" id="Outputs-9">Outputs</h4>
<p><var class="var">BA</var> - a BaseArray object
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fend">
<h4 class="subsection">3.2.2 @BaseArray/end</h4>
<a class="index-entry-id" id="index-end"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-end_0028A_002c"><span><code class="def-type"><var class="var">e</var> =</code> <strong class="def-name">end(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">k</var>)</code></span></dt>
<dd><p>Return last index along a dimension.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002ffull">
<h4 class="subsection">3.2.3 @BaseArray/full</h4>
<a class="index-entry-id" id="index-full"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-full_0028A_0029"><span><code class="def-type"><var class="var">F</var> =</code> <strong class="def-name">full(<var class="var">A</var>)</strong></span></dt>
<dd><p>Make full (dense) array.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fisnumeric">
<h4 class="subsection">3.2.4 @BaseArray/isnumeric</h4>
<a class="index-entry-id" id="index-isnumeric"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-isnumeric_0028A_0029"><span><code class="def-type"><var class="var">isn</var> =</code> <strong class="def-name">isnumeric(<var class="var">A</var>)</strong></span></dt>
<dd><p>Test if array is numeric.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fmax">
<h4 class="subsection">3.2.5 @BaseArray/max</h4>
<a class="index-entry-id" id="index-max"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-max_0028A_002c"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">max(<var class="var">A</var>,</strong> <code class="def-code-arguments">[], <var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the maximum along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fmean">
<h4 class="subsection">3.2.6 @BaseArray/mean</h4>
<a class="index-entry-id" id="index-mean"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-end_0028A_002c-1"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">end(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the mean along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fmin">
<h4 class="subsection">3.2.7 @BaseArray/min</h4>
<a class="index-entry-id" id="index-min"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-end_0028A_002c-2"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">end(<var class="var">A</var>,</strong> <code class="def-code-arguments">[], <var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the minimum along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fmoment">
<h4 class="subsection">3.2.8 @BaseArray/moment</h4>
<a class="index-entry-id" id="index-moment"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-moment_0028A_002c"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">moment(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">order</var>, <var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the central moment of the given order along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fnumel">
<h4 class="subsection">3.2.9 @BaseArray/numel</h4>
<a class="index-entry-id" id="index-numel"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-numel_0028A_0029"><span><code class="def-type"><var class="var">n</var> =</code> <strong class="def-name">numel(<var class="var">A</var>)</strong></span></dt>
<dd><p>Number of elements.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fprod">
<h4 class="subsection">3.2.10 @BaseArray/prod</h4>
<a class="index-entry-id" id="index-prod"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-prod_0028A_002c"><span><code class="def-type"><var class="var">P</var> =</code> <strong class="def-name">prod(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">dims</var>)</code></span></dt>
<dd><p>Compute the product of all elements along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002freduce">
<h4 class="subsection">3.2.11 @BaseArray/reduce</h4>
<a class="index-entry-id" id="index-reduce"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-reducce_0028A_002c"><span><code class="def-type">[<var class="var">s</var>, <var class="var">n</var>] =</code> <strong class="def-name">reducce(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">funred</var>, <var class="var">funelem</var>, <var class="var">dim</var>)</code></span></dt>
<dd><p>Reduce array using callback fundtions.
</p>
<p>Reduce array using the function FUNRED applied to all elements
 after the function FUNELEM was applied along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fsize">
<h4 class="subsection">3.2.12 @BaseArray/size</h4>
<a class="index-entry-id" id="index-size"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-size_0028A_0029"><span><code class="def-type"><var class="var">isz</var> =</code> <strong class="def-name">size(<var class="var">A</var>)</strong></span></dt>
<dd><p>Size of array
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fstd">
<h4 class="subsection">3.2.13 @BaseArray/std</h4>
<a class="index-entry-id" id="index-std"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-std_0028A_002c"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">std(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">opt</var>, <var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the standard deviation.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fsum">
<h4 class="subsection">3.2.14 @BaseArray/sum</h4>
<a class="index-entry-id" id="index-sum"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-sum_0028A_002c"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">sum(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">dim</var>)</code></span></dt>
<dd><p>Compute sum along a dimension.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fsumsq">
<h4 class="subsection">3.2.15 @BaseArray/sumsq</h4>
<a class="index-entry-id" id="index-sumsq"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-end_0028A_002c-3"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">end(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the sum squared.
</p>
<p>Compute the sum squared along dimension DIM.
</p></dd></dl>
</div>
<div class="subsection-level-extent" id="g_t_0040BaseArray_002fvar">
<h4 class="subsection">3.2.16 @BaseArray/var</h4>
<a class="index-entry-id" id="index-var"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-var_0028A_002c"><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">var(<var class="var">A</var>,</strong> <code class="def-code-arguments"><var class="var">opt</var>, <var class="var">dim</var>)</code></span></dt>
<dd><p>Compute the variance along dimension DIM.
</p>
<p>If OPT is equal to 1, then the variance is bias-corrected.
</p></dd></dl>
<hr>
</div>
</div>
<div class="section-level-extent" id="Test-script">
<h3 class="section" id="Test-script-1">3.3 Test script</h3>
<a class="index-entry-id" id="index-Test-script"></a>
<div class="subsection-level-extent" id="test_005fncarray">
<h4 class="subsection">3.3.1 test_ncarray</h4>
<a class="index-entry-id" id="index-test_005fncarray"></a>
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-test_005fncarray_0028_0029"><span><strong class="def-name">test_ncarray()</strong></span></dt>
<dd><p>Test ncBaseArray, ncCatArray and ncArray.
</p></dd></dl>
<hr>
</div>
</div>
</div>
<div class="appendix-level-extent" id="Copying">
<h2 class="appendix" id="GNU-General-Public-License">Appendix A GNU General Public License</h2>
<a class="index-entry-id" id="index-warranty"></a>
<a class="index-entry-id" id="index-copyright"></a>
<div class="center">Version 3, 29 June 2007
</div>
<div class="display">
<pre class="display-preformatted">Copyright &copy; 2007 Free Software Foundation, Inc. <a class="url" href="http://fsf.org/">http://fsf.org/</a>
Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.
</pre></div>
<h3 class="heading" id="Preamble">Preamble</h3>
<p>The GNU General Public License is a free, copyleft license for
software and other kinds of works.
</p>
<p>The licenses for most software and other practical works are designed
to take away your freedom to share and change the works.  By contrast,
the GNU General Public License is intended to guarantee your freedom
to share and change all versions of a program&mdash;to make sure it remains
free software for all its users.  We, the Free Software Foundation,
use the GNU General Public License for most of our software; it
applies also to any other work released this way by its authors.  You
can apply it to your programs, too.
</p>
<p>When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
them if you wish), that you receive source code or can get it if you
want it, that you can change the software or use pieces of it in new
free programs, and that you know you can do these things.
</p>
<p>To protect your rights, we need to prevent others from denying you
these rights or asking you to surrender the rights.  Therefore, you
have certain responsibilities if you distribute copies of the
software, or if you modify it: responsibilities to respect the freedom
of others.
</p>
<p>For example, if you distribute copies of such a program, whether
gratis or for a fee, you must pass on to the recipients the same
freedoms that you received.  You must make sure that they, too,
receive or can get the source code.  And you must show them these
terms so they know their rights.
</p>
<p>Developers that use the GNU GPL protect your rights with two steps:
(1) assert copyright on the software, and (2) offer you this License
giving you legal permission to copy, distribute and/or modify it.
</p>
<p>For the developers&rsquo; and authors&rsquo; protection, the GPL clearly explains
that there is no warranty for this free software.  For both users&rsquo; and
authors&rsquo; sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.
</p>
<p>Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the
manufacturer can do so.  This is fundamentally incompatible with the
aim of protecting users&rsquo; freedom to change the software.  The
systematic pattern of such abuse occurs in the area of products for
individuals to use, which is precisely where it is most unacceptable.
Therefore, we have designed this version of the GPL to prohibit the
practice for those products.  If such problems arise substantially in
other domains, we stand ready to extend this provision to those
domains in future versions of the GPL, as needed to protect the
freedom of users.
</p>
<p>Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish
to avoid the special danger that patents applied to a free program
could make it effectively proprietary.  To prevent this, the GPL
assures that patents cannot be used to render the program non-free.
</p>
<p>The precise terms and conditions for copying, distribution and
modification follow.
</p>
<h3 class="heading" id="TERMS-AND-CONDITIONS">TERMS AND CONDITIONS</h3>
<ol class="enumerate" start="0">
<li> Definitions.
<p>&ldquo;This License&rdquo; refers to version 3 of the GNU General Public License.
</p>
<p>&ldquo;Copyright&rdquo; also means copyright-like laws that apply to other kinds
of works, such as semiconductor masks.
</p>
<p>&ldquo;The Program&rdquo; refers to any copyrightable work licensed under this
License.  Each licensee is addressed as &ldquo;you&rdquo;.  &ldquo;Licensees&rdquo; and
&ldquo;recipients&rdquo; may be individuals or organizations.
</p>
<p>To &ldquo;modify&rdquo; a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of
an exact copy.  The resulting work is called a &ldquo;modified version&rdquo; of
the earlier work or a work &ldquo;based on&rdquo; the earlier work.
</p>
<p>A &ldquo;covered work&rdquo; means either the unmodified Program or a work based
on the Program.
</p>
<p>To &ldquo;propagate&rdquo; a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy.  Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.
</p>
<p>To &ldquo;convey&rdquo; a work means any kind of propagation that enables other
parties to make or receive copies.  Mere interaction with a user
through a computer network, with no transfer of a copy, is not
conveying.
</p>
<p>An interactive user interface displays &ldquo;Appropriate Legal Notices&rdquo; to
the extent that it includes a convenient and prominently visible
feature that (1) displays an appropriate copyright notice, and (2)
tells the user that there is no warranty for the work (except to the
extent that warranties are provided), that licensees may convey the
work under this License, and how to view a copy of this License.  If
the interface presents a list of user commands or options, such as a
menu, a prominent item in the list meets this criterion.
</p>
</li><li> Source Code.
<p>The &ldquo;source code&rdquo; for a work means the preferred form of the work for
making modifications to it.  &ldquo;Object code&rdquo; means any non-source form
of a work.
</p>
<p>A &ldquo;Standard Interface&rdquo; means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that
is widely used among developers working in that language.
</p>
<p>The &ldquo;System Libraries&rdquo; of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that
Major Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form.  A
&ldquo;Major Component&rdquo;, in this context, means a major essential component
(kernel, window system, and so on) of the specific operating system
(if any) on which the executable work runs, or a compiler used to
produce the work, or an object code interpreter used to run it.
</p>
<p>The &ldquo;Corresponding Source&rdquo; for a work in object code form means all
the source code needed to generate, install, and (for an executable
work) run the object code and to modify the work, including scripts to
control those activities.  However, it does not include the work&rsquo;s
System Libraries, or general-purpose tools or generally available free
programs which are used unmodified in performing those activities but
which are not part of the work.  For example, Corresponding Source
includes interface definition files associated with source files for
the work, and the source code for shared libraries and dynamically
linked subprograms that the work is specifically designed to require,
such as by intimate data communication or control flow between those
subprograms and other parts of the work.
</p>
<p>The Corresponding Source need not include anything that users can
regenerate automatically from other parts of the Corresponding Source.
</p>
<p>The Corresponding Source for a work in source code form is that same
work.
</p>
</li><li> Basic Permissions.
<p>All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met.  This License explicitly affirms your unlimited
permission to run the unmodified Program.  The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work.  This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.
</p>
<p>You may make, run and propagate covered works that you do not convey,
without conditions so long as your license otherwise remains in force.
You may convey covered works to others for the sole purpose of having
them make modifications exclusively for you, or provide you with
facilities for running those works, provided that you comply with the
terms of this License in conveying all material for which you do not
control copyright.  Those thus making or running the covered works for
you must do so exclusively on your behalf, under your direction and
control, on terms that prohibit them from making any copies of your
copyrighted material outside their relationship with you.
</p>
<p>Conveying under any other circumstances is permitted solely under the
conditions stated below.  Sublicensing is not allowed; section 10
makes it unnecessary.
</p>
</li><li> Protecting Users&rsquo; Legal Rights From Anti-Circumvention Law.
<p>No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article
11 of the WIPO copyright treaty adopted on 20 December 1996, or
similar laws prohibiting or restricting circumvention of such
measures.
</p>
<p>When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such
circumvention is effected by exercising rights under this License with
respect to the covered work, and you disclaim any intention to limit
operation or modification of the work as a means of enforcing, against
the work&rsquo;s users, your or third parties&rsquo; legal rights to forbid
circumvention of technological measures.
</p>
</li><li> Conveying Verbatim Copies.
<p>You may convey verbatim copies of the Program&rsquo;s source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice;
keep intact all notices stating that this License and any
non-permissive terms added in accord with section 7 apply to the code;
keep intact all notices of the absence of any warranty; and give all
recipients a copy of this License along with the Program.
</p>
<p>You may charge any price or no price for each copy that you convey,
and you may offer support or warranty protection for a fee.
</p>
</li><li> Conveying Modified Source Versions.
<p>You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the
terms of section 4, provided that you also meet all of these
conditions:
</p>
<ol class="enumerate" type="a" start="1">
<li> The work must carry prominent notices stating that you modified it,
and giving a relevant date.
</li><li> The work must carry prominent notices stating that it is released
under this License and any conditions added under section 7.  This
requirement modifies the requirement in section 4 to &ldquo;keep intact all
notices&rdquo;.
</li><li> You must license the entire work, as a whole, under this License to
anyone who comes into possession of a copy.  This License will
therefore apply, along with any applicable section 7 additional terms,
to the whole of the work, and all its parts, regardless of how they
are packaged.  This License gives no permission to license the work in
any other way, but it does not invalidate such permission if you have
separately received it.
</li><li> If the work has interactive user interfaces, each must display
Appropriate Legal Notices; however, if the Program has interactive
interfaces that do not display Appropriate Legal Notices, your work
need not make them do so.
</li></ol>
<p>A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work,
and which are not combined with it such as to form a larger program,
in or on a volume of a storage or distribution medium, is called an
&ldquo;aggregate&rdquo; if the compilation and its resulting copyright are not
used to limit the access or legal rights of the compilation&rsquo;s users
beyond what the individual works permit.  Inclusion of a covered work
in an aggregate does not cause this License to apply to the other
parts of the aggregate.
</p>
</li><li> Conveying Non-Source Forms.
<p>You may convey a covered work in object code form under the terms of
sections 4 and 5, provided that you also convey the machine-readable
Corresponding Source under the terms of this License, in one of these
ways:
</p>
<ol class="enumerate" type="a" start="1">
<li> Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by the
Corresponding Source fixed on a durable physical medium customarily
used for software interchange.
</li><li> Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by a written
offer, valid for at least three years and valid for as long as you
offer spare parts or customer support for that product model, to give
anyone who possesses the object code either (1) a copy of the
Corresponding Source for all the software in the product that is
covered by this License, on a durable physical medium customarily used
for software interchange, for a price no more than your reasonable
cost of physically performing this conveying of source, or (2) access
to copy the Corresponding Source from a network server at no charge.
</li><li> Convey individual copies of the object code with a copy of the written
offer to provide the Corresponding Source.  This alternative is
allowed only occasionally and noncommercially, and only if you
received the object code with such an offer, in accord with subsection
6b.
</li><li> Convey the object code by offering access from a designated place
(gratis or for a charge), and offer equivalent access to the
Corresponding Source in the same way through the same place at no
further charge.  You need not require recipients to copy the
Corresponding Source along with the object code.  If the place to copy
the object code is a network server, the Corresponding Source may be
on a different server (operated by you or a third party) that supports
equivalent copying facilities, provided you maintain clear directions
next to the object code saying where to find the Corresponding Source.
Regardless of what server hosts the Corresponding Source, you remain
obligated to ensure that it is available for as long as needed to
satisfy these requirements.
</li><li> Convey the object code using peer-to-peer transmission, provided you
inform other peers where the object code and Corresponding Source of
the work are being offered to the general public at no charge under
subsection 6d.
</li></ol>
<p>A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be
included in conveying the object code work.
</p>
<p>A &ldquo;User Product&rdquo; is either (1) a &ldquo;consumer product&rdquo;, which means any
tangible personal property which is normally used for personal,
family, or household purposes, or (2) anything designed or sold for
incorporation into a dwelling.  In determining whether a product is a
consumer product, doubtful cases shall be resolved in favor of
coverage.  For a particular product received by a particular user,
&ldquo;normally used&rdquo; refers to a typical or common use of that class of
product, regardless of the status of the particular user or of the way
in which the particular user actually uses, or expects or is expected
to use, the product.  A product is a consumer product regardless of
whether the product has substantial commercial, industrial or
non-consumer uses, unless such uses represent the only significant
mode of use of the product.
</p>
<p>&ldquo;Installation Information&rdquo; for a User Product means any methods,
procedures, authorization keys, or other information required to
install and execute modified versions of a covered work in that User
Product from a modified version of its Corresponding Source.  The
information must suffice to ensure that the continued functioning of
the modified object code is in no case prevented or interfered with
solely because modification has been made.
</p>
<p>If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied
by the Installation Information.  But this requirement does not apply
if neither you nor any third party retains the ability to install
modified object code on the User Product (for example, the work has
been installed in ROM).
</p>
<p>The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or
updates for a work that has been modified or installed by the
recipient, or for the User Product in which it has been modified or
installed.  Access to a network may be denied when the modification
itself materially and adversely affects the operation of the network
or violates the rules and protocols for communication across the
network.
</p>
<p>Corresponding Source conveyed, and Installation Information provided,
in accord with this section must be in a format that is publicly
documented (and with an implementation available to the public in
source code form), and must require no special password or key for
unpacking, reading or copying.
</p>
</li><li> Additional Terms.
<p>&ldquo;Additional permissions&rdquo; are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law.  If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by
this License without regard to the additional permissions.
</p>
<p>When you convey a copy of a covered work, you may at your option
remove any additional permissions from that copy, or from any part of
it.  (Additional permissions may be written to require their own
removal in certain cases when you modify the work.)  You may place
additional permissions on material, added by you to a covered work,
for which you have or can give appropriate copyright permission.
</p>
<p>Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders
of that material) supplement the terms of this License with terms:
</p>
<ol class="enumerate" type="a" start="1">
<li> Disclaiming warranty or limiting liability differently from the terms
of sections 15 and 16 of this License; or
</li><li> Requiring preservation of specified reasonable legal notices or author
attributions in that material or in the Appropriate Legal Notices
displayed by works containing it; or
</li><li> Prohibiting misrepresentation of the origin of that material, or
requiring that modified versions of such material be marked in
reasonable ways as different from the original version; or
</li><li> Limiting the use for publicity purposes of names of licensors or
authors of the material; or
</li><li> Declining to grant rights under trademark law for use of some trade
names, trademarks, or service marks; or
</li><li> Requiring indemnification of licensors and authors of that material by
anyone who conveys the material (or modified versions of it) with
contractual assumptions of liability to the recipient, for any
liability that these contractual assumptions directly impose on those
licensors and authors.
</li></ol>
<p>All other non-permissive additional terms are considered &ldquo;further
restrictions&rdquo; within the meaning of section 10.  If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term.  If a license document contains
a further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms
of that license document, provided that the further restriction does
not survive such relicensing or conveying.
</p>
<p>If you add terms to a covered work in accord with this section, you
must place, in the relevant source files, a statement of the
additional terms that apply to those files, or a notice indicating
where to find the applicable terms.
</p>
<p>Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions; the
above requirements apply either way.
</p>
</li><li> Termination.
<p>You may not propagate or modify a covered work except as expressly
provided under this License.  Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).
</p>
<p>However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally
terminates your license, and (b) permanently, if the copyright holder
fails to notify you of the violation by some reasonable means prior to
60 days after the cessation.
</p>
<p>Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.
</p>
<p>Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.
</p>
</li><li> Acceptance Not Required for Having Copies.
<p>You are not required to accept this License in order to receive or run
a copy of the Program.  Ancillary propagation of a covered work
occurring solely as a consequence of using peer-to-peer transmission
to receive a copy likewise does not require acceptance.  However,
nothing other than this License grants you permission to propagate or
modify any covered work.  These actions infringe copyright if you do
not accept this License.  Therefore, by modifying or propagating a
covered work, you indicate your acceptance of this License to do so.
</p>
</li><li> Automatic Licensing of Downstream Recipients.
<p>Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License.  You are not responsible
for enforcing compliance by third parties with this License.
</p>
<p>An &ldquo;entity transaction&rdquo; is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations.  If propagation of a covered
work results from an entity transaction, each party to that
transaction who receives a copy of the work also receives whatever
licenses to the work the party&rsquo;s predecessor in interest had or could
give under the previous paragraph, plus a right to possession of the
Corresponding Source of the work from the predecessor in interest, if
the predecessor has it or can get it with reasonable efforts.
</p>
<p>You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License.  For example, you may
not impose a license fee, royalty, or other charge for exercise of
rights granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that
any patent claim is infringed by making, using, selling, offering for
sale, or importing the Program or any portion of it.
</p>
</li><li> Patents.
<p>A &ldquo;contributor&rdquo; is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based.  The
work thus licensed is called the contributor&rsquo;s &ldquo;contributor version&rdquo;.
</p>
<p>A contributor&rsquo;s &ldquo;essential patent claims&rdquo; are all patent claims owned
or controlled by the contributor, whether already acquired or
hereafter acquired, that would be infringed by some manner, permitted
by this License, of making, using, or selling its contributor version,
but do not include claims that would be infringed only as a
consequence of further modification of the contributor version.  For
purposes of this definition, &ldquo;control&rdquo; includes the right to grant
patent sublicenses in a manner consistent with the requirements of
this License.
</p>
<p>Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor&rsquo;s essential patent claims, to
make, use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.
</p>
<p>In the following three paragraphs, a &ldquo;patent license&rdquo; is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement).  To &ldquo;grant&rdquo; such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.
</p>
<p>If you convey a covered work, knowingly relying on a patent license,
and the Corresponding Source of the work is not available for anyone
to copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients.  &ldquo;Knowingly relying&rdquo; means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient&rsquo;s use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.
</p>
<p>If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify
or convey a specific copy of the covered work, then the patent license
you grant is automatically extended to all recipients of the covered
work and works based on it.
</p>
<p>A patent license is &ldquo;discriminatory&rdquo; if it does not include within the
scope of its coverage, prohibits the exercise of, or is conditioned on
the non-exercise of one or more of the rights that are specifically
granted under this License.  You may not convey a covered work if you
are a party to an arrangement with a third party that is in the
business of distributing software, under which you make payment to the
third party based on the extent of your activity of conveying the
work, and under which the third party grants, to any of the parties
who would receive the covered work from you, a discriminatory patent
license (a) in connection with copies of the covered work conveyed by
you (or copies made from those copies), or (b) primarily for and in
connection with specific products or compilations that contain the
covered work, unless you entered into that arrangement, or that patent
license was granted, prior to 28 March 2007.
</p>
<p>Nothing in this License shall be construed as excluding or limiting
any implied license or other defenses to infringement that may
otherwise be available to you under applicable patent law.
</p>
</li><li> No Surrender of Others&rsquo; Freedom.
<p>If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot convey
a covered work so as to satisfy simultaneously your obligations under
this License and any other pertinent obligations, then as a
consequence you may not convey it at all.  For example, if you agree
to terms that obligate you to collect a royalty for further conveying
from those to whom you convey the Program, the only way you could
satisfy both those terms and this License would be to refrain entirely
from conveying the Program.
</p>
</li><li> Use with the GNU Affero General Public License.
<p>Notwithstanding any other provision of this License, you have
permission to link or combine any covered work with a work licensed
under version 3 of the GNU Affero General Public License into a single
combined work, and to convey the resulting work.  The terms of this
License will continue to apply to the part which is the covered work,
but the special requirements of the GNU Affero General Public License,
section 13, concerning interaction through a network will apply to the
combination as such.
</p>
</li><li> Revised Versions of this License.
<p>The Free Software Foundation may publish revised and/or new versions
of the GNU General Public License from time to time.  Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.
</p>
<p>Each version is given a distinguishing version number.  If the Program
specifies that a certain numbered version of the GNU General Public
License &ldquo;or any later version&rdquo; applies to it, you have the option of
following the terms and conditions either of that numbered version or
of any later version published by the Free Software Foundation.  If
the Program does not specify a version number of the GNU General
Public License, you may choose any version ever published by the Free
Software Foundation.
</p>
<p>If the Program specifies that a proxy can decide which future versions
of the GNU General Public License can be used, that proxy&rsquo;s public
statement of acceptance of a version permanently authorizes you to
choose that version for the Program.
</p>
<p>Later license versions may give you additional or different
permissions.  However, no additional obligations are imposed on any
author or copyright holder as a result of your choosing to follow a
later version.
</p>
</li><li> Disclaimer of Warranty.
<p>THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM &ldquo;AS IS&rdquo; WITHOUT
WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND
PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE PROGRAM PROVE
DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR
CORRECTION.
</p>
</li><li> Limitation of Liability.
<p>IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR
LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM
TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER
PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
</p>
</li><li> Interpretation of Sections 15 and 16.
<p>If the disclaimer of warranty and limitation of liability provided
above cannot be given local legal effect according to their terms,
reviewing courts shall apply local law that most closely approximates
an absolute waiver of all civil liability in connection with the
Program, unless a warranty or assumption of liability accompanies a
copy of the Program in return for a fee.
</p>
</li></ol>
<h3 class="heading" id="END-OF-TERMS-AND-CONDITIONS">END OF TERMS AND CONDITIONS</h3>
<h3 class="heading" id="How-to-Apply-These-Terms-to-Your-New-Programs">How to Apply These Terms to Your New Programs</h3>
<p>If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.
</p>
<p>To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
state the exclusion of warranty; and each file should have at least
the &ldquo;copyright&rdquo; line and a pointer to where the full notice is found.
</p>
<div class="example smallexample">
<pre class="example-preformatted"><var class="var">one line to give the program's name and a brief idea of what it does.</var>  
Copyright (C) <var class="var">year</var> <var class="var">name of author</var>
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.
This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <a class="url" href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.
</pre></div>
<p>Also add information on how to contact you by electronic and paper mail.
</p>
<p>If the program does terminal interaction, make it output a short
notice like this when it starts in an interactive mode:
</p>
<div class="example smallexample">
<pre class="example-preformatted"><var class="var">program</var> Copyright (C) <var class="var">year</var> <var class="var">name of author</var> 
This program comes with ABSOLUTELY NO WARRANTY; for details type &lsquo;<samp class="samp">show w</samp>&rsquo;.
This is free software, and you are welcome to redistribute it
under certain conditions; type &lsquo;<samp class="samp">show c</samp>&rsquo; for details.
</pre></div>
<p>The hypothetical commands &lsquo;<samp class="samp">show w</samp>&rsquo; and &lsquo;<samp class="samp">show c</samp>&rsquo; should show
the appropriate parts of the General Public License.  Of course, your
program&rsquo;s commands might be different; for a GUI interface, you would
use an &ldquo;about box&rdquo;.
</p>
<p>You should also get your employer (if you work as a programmer) or school,
if any, to sign a &ldquo;copyright disclaimer&rdquo; for the program, if necessary.
For more information on this, and how to apply and follow the GNU GPL, see
<a class="url" href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.
</p>
<p>The GNU General Public License does not permit incorporating your
program into proprietary programs.  If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library.  If this is what you want to do, use
the GNU Lesser General Public License instead of this License.  But
first, please read <a class="url" href="http://www.gnu.org/philosophy/why-not-lgpl.html">http://www.gnu.org/philosophy/why-not-lgpl.html</a>.
</p>
<hr>
</div>
<div class="unnumbered-level-extent" id="Index">
<h2 class="unnumbered" id="Index-1">Index</h2>
 
<div class="printindex cp-printindex">
<table class="cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></table>
<table class="cp-entries-printindex">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><th class="sections-header-printindex">Section</th></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-B">B</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-BaseArray">BaseArray</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Basic-Usage-Overview">Basic Usage Overview</a></td><td class="printindex-index-section"><a href="#Basic-Usage-Overview">Basic Usage Overview</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-C">C</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-cached_005fdecompress">cached_decompress</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-coord">coord</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-copyright">copyright</a></td><td class="printindex-index-section"><a href="#Copying">Copying</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-E">E</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-end">end</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-F">F</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-full">full</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Function-Reference">Function Reference</a></td><td class="printindex-index-section"><a href="#Function-Reference">Function Reference</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-I">I</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Installing-and-loading">Installing and loading</a></td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-isnumeric">isnumeric</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-L">L</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Loading">Loading</a></td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-M">M</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-max">max</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-mean">mean</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-min">min</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-moment">moment</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-N">N</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ncArray">ncArray</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ncArray-1">ncArray</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ncBaseArray">ncBaseArray</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ncCatArray">ncCatArray</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-nccoord">nccoord</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-ncreadtime">ncreadtime</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-nctimeunits">nctimeunits</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-numel">numel</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-O">O</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Off_002dline-install">Off-line install</a></td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Online-install">Online install</a></td><td class="printindex-index-section"><a href="#Installing-and-loading">Installing and loading</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-P">P</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-prod">prod</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-R">R</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-reduce">reduce</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-S">S</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-size">size</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-std">std</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsasgn">subsasgn</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-subsref">subsref</a></td><td class="printindex-index-section"><a href="#ncArray">ncArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-sum">sum</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-sumsq">sumsq</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-T">T</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-Test-script">Test script</a></td><td class="printindex-index-section"><a href="#Test-script">Test script</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-test_005fncarray">test_ncarray</a></td><td class="printindex-index-section"><a href="#Test-script">Test script</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-V">V</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-var">var</a></td><td class="printindex-index-section"><a href="#ncBaseArray">ncBaseArray</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
<tr><th id="Index_cp_letter-W">W</th></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-warranty">warranty</a></td><td class="printindex-index-section"><a href="#Copying">Copying</a></td></tr>
<tr><td colspan="3"><hr></td></tr>
</table>
<table class="cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></table>
</div>
 
</div>
</div>
