---
layout: "default"
permalink: "/functions/17_cacheddecompress/"
pkg_name: "ncarray"
pkg_version: "1.0.6"
pkg_description: "Access a single or a collection of NetCDF files as a multi-dimensional array"
title: "Ncarray Toolkit - cached_decompress"
category: "Test script"
func_name: "cached_decompress"
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
<dt class="deftypefn def-line" id="index-cached_005fdecompress_0028filename_0029"><span><code class="def-type"><var class="var">fname</var> =</code> <strong class="def-name">cached_decompress(<var class="var">filename</var>)</strong></span></dt>
<dd><p>Decompress a file using a cache.
</p>
<h4 class="subsubheading" id="Inputs"><span>Inputs</span></h4>
<p><var class="var">filename</var>: name of the file which is possibly compressed
</p>
<h4 class="subsubheading" id="Outputs"><span>Outputs</span></h4>
<p><var class="var">fname</var>: the filename of the uncompressed file
</p>
<h4 class="subsubheading" id="Global-variables"><span>Global variables</span></h4>
<p>CACHED_DECOMPRESS_DIR (default is the result of tempname)
    cache directory of decompressed files.
</p>
<p>CACHED_DECOMPRESS_LOG_FID (default 1): file id for log message
</p>
<p>CACHED_DECOMPRESS_MAX_SIZE (default 1e10): maximum size of cache in bytes.
 </p></dd></dl>