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

" CSS 3 Property NOT finished
" Reference Page http://www.w3schools.com/cssref/default.asp

syn match cssColorProp contained "\<background\(-\(origin\|clip\|size\|image\)\)\=" 
syn match cssBoxProp contained "\<border-image\(-\(outset\|repeat\|slice\|source\|width\)\)\=\>"
syn match cssBoxProp contained "\<border-radius\=\>"
syn match cssBoxProp contained "\<border-\(top\|bottom\)-\(left\|right\)-radius\>"
syn match cssBoxProp contained "\<box-shadow\>" 

syn match cssBoxProp contained "\<overflow-\(x\|y\|style\)\>" 
syn match cssBoxProp contained "\<rotation\(-point\)=\>" 

syn keyword cssColorProp contained opacity 

syn match cssBoxProp contained "\<box-\(align\|direction\|flex\|flex-group\|lines\|ordinal-group\|orient\|pack\)\>" 

syn match cssFontProp contained "\<@font-face\>"
syn match cssFontProp contained "\<font-size-adjust\>"
syn match cssFontProp contained "\<font-stretch\>"

syn match cssTextProp contained "\<hanging-punctuation\>" 
syn match cssTextProp contained "\<punctuation-trim\>" 
syn match cssTextProp contained "\<text-\(justify\|\outline\|shadow\|overflow\|warp\)\>" 
syn match cssTextProp contained "\<word-\(break\|\wrap\)\>" 

syn match cssBoxProp contained "\<transform\(-\(origin\|style\)\)\=\>"
syn match cssBoxProp contained "\<perspective\(-origin\)\=\>"
syn match cssBoxProp contained "\<backface-visibility\>"

syn match cssBoxProp contained "\<transition\(-\(delay\|duration\|property\|timing-function\)\)\=\>"
syn match cssBoxProp contained "\<linear\>"
syn match cssBoxProp contained "\<ease\(-\(in-out\|out\|in\)\)\=\>"
syn match cssBoxProp contained "\<cubic-bezier\>"

syn region cssFunction contained matchgroup=cssFunctionName start="\<\(rgba\|hsl\|hsla\)\s*(" end=")" oneline keepend
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(linear-gradient\)\s*(" end=")" oneline keepend
syn region cssFunction contained matchgroup=cssFunctionName start="\<\(radial-gradient\)\s*(" end=")" oneline keepend

" cssComment = cssVendor
syn match cssComment contained "\(-\(webkit\|moz\|o\|ms\)-\)\|filter"

" CSS3 PseudoClass
syn match cssPseudoClassId contained "\<\(last\|only\|nth\|nth-last\)-child\>"
syn match cssPseudoClassId contained "\<\(first\|last\|only\|nth\|nth-last\)-of-type\>"
syn keyword cssPseudoClass contained root empty target enable disabled checked not selection

" Oneline comment
syntax region  cssComment  start="//" skip="\\$" end="$" keepend contains=@Spell

" Bug fix for PseudoClass after the ':'
syn match cssPseudoClass ":\s*\w*" contains=cssPseudoClassId,cssUnicodeEscape


