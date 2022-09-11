## Copyright (C) 2012-2022 Alexander Barth <barth.alexander@gmail.com>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn  {} {@var{fname} =} cached_decompress(@var{filename})
## Decompress a file using a cache.
##
## @subsubheading Inputs
##  @var{filename}: name of the file which is possibly compressed
##
## @subsubheading Outputs
##  @var{fname}: the filename of the uncompressed file
##
## @subsubheading Global variables
## CACHED_DECOMPRESS_DIR (default is the result of tempname)
##    cache directory of decompressed files.
##
## CACHED_DECOMPRESS_LOG_FID (default 1): file id for log message
##
## CACHED_DECOMPRESS_MAX_SIZE (default 1e10): maximum size of cache in bytes.
## @end deftypefn
function fname = cached_decompress(url)

  global CACHED_DECOMPRESS_DIR
  global CACHED_DECOMPRESS_LOG_FID
  global CACHED_DECOMPRESS_MAX_SIZE

  if startswith(url,'http:') || ...
        ~(endswith(url,'.gz') || endswith(url,'.bz2') || endswith(url,'.xz'))
    % opendap url or not compressed file
    fname = url;
    return
  endif


  cache_dir = CACHED_DECOMPRESS_DIR;

  if isempty(cache_dir)
    cache_dir = tempname;
    CACHED_DECOMPRESS_DIR = cache_dir; 
    mkdir(cache_dir);
    fprintf('creating directory %s for temporary files.\n',cache_dir);
  endif

  %if exist(cache_dir,'dir') ~= 7
  %  error(['cache directory for compressed files does not exist. '...
  %         'Please create the directory %s or change le value of the '...
  %         'global variable CACHED_DECOMPRESS_DIR'],cache_dir);
  %endif
    
  % where to print logs? default to screen

  fid = CACHED_DECOMPRESS_LOG_FID;

  if (isempty(fid))
    fid = 1;
  endif

  % form filename for cache

  fname = url;
  fname = strrep(fname,'/','_SLASH_');
  fname = strrep(fname,'*','_STAR_');
  fname = strrep(fname,'\','_BSLASH_');
  fname = strrep(fname,':','_COLON_');

  fname = fullfile(cache_dir,fname);

  % test if in cache

  if exist(fname,'file') ~= 2

    if ispc()
      # TODO - just do for all OSs?
      
      tmp_dir = tempname ();
      [success, msg] = mkdir (tmp_dir);
      if (success != 1)
        error ("failed to create temporary directory: %s", msg);
      endif

      unwind_protect
        looks_like_url = regexp (url, '^\w+://');
        if looks_like_url;
          [~, name, ext] = fileparts (url);
          tmp_file = fullfile (tmp_dir, [name ext]);

          [~, success, msg] = urlwrite (url, tmp_file);
          if (success != 1)
            error ("failed downloading '%s': %s", url, msg);
          endif
        else
          [~, name, ext] = fileparts (url);
          tmp_file = fullfile (tmp_dir, ["tmp_" name ext]);
          success = copyfile(url, tmp_file);
          if (success != 1)
            error ("failed copying '%s'", url);
          endif
        endif

        if !exist (tmp_file, "file")
          error ("No local file '%s' found\n", tmp_file);
        endif

        if endswith(url,'.zip')
          func_uncomp = @unzip
        elseif endswith(url,'.gz')
          func_uncomp = @gunzip
        elseif endswith(url,'.bz2')
          func_uncomp = @bunzip2
        else
          func_uncomp = []
        endif

        if !isempty(func_uncomp)
          files = func_uncomp(tmp_file, tmp_dir)
        else
          files = {tmp_file}
        endif

        if length(files) != 1
          error ("Expected single file being added");
        endif

        success = copyfile(files{1}, fname);

        if (success != 1)
          error ("Failed to copy file to cache");
        endif

      unwind_protect_cleanup
        if (exist (tmp_dir, "file"))
          confirm_recursive_rmdir (0, "local");
          rmdir(tmp_dir, "s");
        endif
      end_unwind_protect
    else

      # else try via command (after checking it exists?)
      if endswith(url,'.gz')
        cmd = 'gunzip --stdout -';
      elseif endswith(url,'.bz2')
        cmd = 'bunzip2 --stdout -';
      elseif endswith(url,'.xz')
        cmd = 'unxz --stdout -';
      else
        cmd = 'cat';
      endif

      if startswith(url,'ftp://')
        syscmd('curl --silent "%s" | %s > "%s"',url,cmd,fname);
      else
        syscmd('%s < "%s" > "%s"',cmd,url,fname);
      endif
    endif

  else
    % fprintf(fid,'retrieve from cache %s\n',url);
  endif

  % check cache size

  d=dir(cache_dir);
  cashe_size = sum([d.bytes]);
  max_cache_size = CACHED_DECOMPRESS_MAX_SIZE;

  if isempty(max_cache_size)
    max_cache_size = 1e10;
  endif

  if (cashe_size > max_cache_size)
    
    % look for oldest files
    fdate = zeros(1,length(d));
    for i=1:length(d);
      fdate(i) = datenum(d(i).date);
    endfor
    
    [fdate,index] = sort(fdate,'descend');
    d=d(index);
    
    cum_size = cumsum([d(:).bytes]);
    todelete = find(cum_size > max_cache_size);
    
    for i=todelete
      if (d(i).isdir == 0)
        fprintf(fid,'clean cashe: delete %s\n', d(i).name);
        delete(fullfile(cache_dir,d(i).name));
      endif
    endfor
  endif
endfunction

function t = startswith(s,ext)

  if length(ext) <= length(s)
    t = strcmp(s(1:length(ext)),ext);
  else
    t = 0;
  endif
endfunction

function t = endswith(s,ext)

  if length(ext) <= length(s)
    t = strcmp(s(end-length(ext)+1:end),ext);
  else
    t = 0;
  endif
endfunction

function syscmd(varargin)

  cmd = sprintf(varargin{:});
  %disp(cmd)
  status = 0;
  [status, output] = system(cmd);

  disp(output);
  if status ~= 0
    error(['command "' cmd '" failed: ' output]);
  endif
endfunction



