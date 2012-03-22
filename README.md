Installation
------------
Run install.sh

> ./install.sh

Then the css syntax file will be put in ~/.vim/after/syntax/.

Usage
------------
When you start vim, it will read the default css syntax file first, then it will read our css syntax file.

Tips (nothing to do with syntax file)
------------
When I tried to indent the html file with "=", vim indented all the tags with zero-indent.

By adding following two lines 

<pre>
 let g:html_indent_tags=""
 filetype indent on
</pre>
to your vimrc file, things will be much better.
