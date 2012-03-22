" Vim syntax file 
" Language:	CSS 
" Maintainer: kight <w.jq0722@gmail.com>
" Last Change:Mar 18, 2012
" A lightweight additional css3 syntax file.

" HTML 5 new tags 5*6=30
syn keyword cssTagName article aside audio bdi canvas command 
syn keyword cssTagName datalist details embed figcaption figure footer
syn keyword cssTagName header hgroup keygen mark meter nav 
syn keyword cssTagName output progress rt rp ruby section 
syn keyword cssTagName source summary time track video wbr

" HTML 5 Attribute
syn keyword cssCommonAttr contained contenteditable contextmenu draggable dropzone hidden spellcheck

" CSS 3 Property 
" Reference Page http://www.w3schools.com/cssref/default.asp

" CSS 3 Properties which do not have any brower support will -NOT- be highlighted!.
" Reference http://www.w3schools.com/cssref/css3_browsersupport.asp
syn match cssBoxProp contained "\<animation\(-\(name\|duration\|timing-function\|delay\|iteration-cout\|play-state\)\)\=\>" 
syn match cssBoxProp contained "\<appearance\>" 
syn match cssBoxProp contained "\<backface-visibility\>" 

syn match cssColorProp contained "\<background\(-\(clip\|origin\|size\|image\)\)\=\>" 
syn match cssBoxProp contained "\<border-image\>"
" syn match cssBoxProp contained "\<border-image\(-\(outset\|repeat\|slice\|source\|width\)\)\=\>"

syn match cssBoxProp contained "\<border-radius\=\>"
syn match cssBoxProp contained "\<border-\(top\|bottom\)-\(left\|right\)-radius\>"

syn match cssBoxProp contained "\<box-\(align\|direction\|flex\|ordinal-group\|orient\|pack\|shadow\|sizing\)\>" 

syn match cssBoxProp contained "\<column\(-\(\break-\(after\|before\)\|count\|gap\|rule\(-\(color\|style\|width\)\)\=\)\|span\|width\)\=\>"

syn match cssFontProp contained "\<font-size-adjust\>"
syn match cssTagName "@\(-\(webkit\|moz\)-\)keyframes\>" nextgroup=cssDefinition
syn match cssBoxProp contained "\<marquee\(-\(direction\|play-count\|speed\|style\)\)\=\>"
syn match cssBoxProp contained "\<nav-\(down\|index\|left\|right\|up\)\=\>"
syn match cssBoxProp contained "\<outline-offset\>" 
syn match cssBoxProp contained "\<overflow-\(x\|y\|style\)\>" 
syn match cssBoxProp contained "\<perspective\(-origin\)\=\>"

syn keyword cssColorProp contained opacity 
syn keyword cssColorProp contained resize 

syn match cssBoxProp contained "\<ruby-\(align\|overhang\|position\)\>" 
syn match cssTextProp contained "\<text-\(justify\|\outline\|shadow\|overflow\|warp\)\>" 
syn match cssBoxProp contained "\<transform\(-\(origin\|style\)\)\=\>"
syn match cssTextProp contained "\<word-\(break\|\wrap\)\>" 

syn match cssBoxProp contained "\<transition\(-\(delay\|duration\|property\|timing-function\)\)\=\>"
syn match cssBoxAttr contained "\<linear\>"
syn match cssBoxAttr contained "\<ease\(-\(in-out\|out\|in\)\)\=\>"
syn match cssBoxAttr contained "\<cubic-bezier\>"
syn match cssBoxAttr contained "\<infinite\>"

"syn match cssBoxProp contained "\<rotation\(-point\)=\>" 
"syn match cssTextProp contained "\<hanging-punctuation\>" 
"syn match cssTextProp contained "\<punctuation-trim\>" 

syn region cssFunction contained matchgroup=cssFunctionName start="\<\(rgba\|hsl\|hsla\)\s*(" end=")" oneline keepend
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(linear\|radial\)-gradient\s*(" end=")" oneline keepend
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(matrix\(3d\)\=\|scale\(3d\|X\|Y|\Z\)\=\|translate\(3d\|X\|Y|\Z\)\=\|skew\(X\|Y\)\=\|rotate\(3d\|X\|Y|\Z\)\=\)\s*(" end=")" oneline keepend

" cssComment = cssVendor
syn match cssComment contained "\(-\(webkit\|moz\|o\|ms\)-\)\|filter"

" CSS3 PseudoClass
syn match cssPseudoClassId contained "\<\(last\|only\|nth\|nth-last\)-child\>"
syn match cssPseudoClassId contained "\<\(first\|last\|only\|nth\|nth-last\)-of-type\>"
syn keyword cssPseudoClassId contained root empty target enable disabled checked not selection

" One line comment
syntax region  cssComment  start="//" skip="\\$" end="$" keepend contains=@Spell

" Bug fix for PseudoClass after the ':'
syn match cssPseudoClass ":\s*\w*" contains=cssPseudoClassId,cssUnicodeEscape

" Bug fix for the syntax in @keyframes
syn region cssDefinition transparent matchgroup=cssBraces start='{' end='}' contains=css.*Attr,css.*Prop,cssComment,cssValue.*,cssColor,cssURL,cssImportant,cssError,cssStringQ,cssStringQQ,cssFunction,cssUnicodeEscape,cssDefinition

