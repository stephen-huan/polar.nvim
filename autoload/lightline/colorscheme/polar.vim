" =============================================================================
" Filename: autoload/lightline/colorscheme/polar.vim
" Author: Stephen Huan <stephen-huan>
" License: MIT License
" Last Change: 2022/05/28 20:24:26.
" =============================================================================

" Common colors
let s:blue   = [ '#61afef',  75 ]
let s:green  = [ '#98c379',  76 ]
let s:purple = [ '#c678dd', 176 ]
let s:red1   = [ '#e06c75', 168 ]
let s:red2   = [ '#be5046', 168 ]
let s:yellow = [ '#e5c07b', 180 ]
" Light variant
let s:fg     = [ '#000000',  16 ]
let s:bg     = [ '#ffffff', 231 ]
let s:gray1  = [ '#808080', 244 ]
let s:gray2  = [ '#f4f4f4', 254 ]
let s:gray3  = [ '#cacbcc', 251 ]

let s:box    = [ s:gray1, s:bg ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:bg,     s:green,  'bold' ], s:box ]
let s:p.normal.middle   = [ [ s:gray1,  s:gray2 ] ]
let s:p.normal.right    = [ [ s:bg,     s:gray1,  'bold' ], s:box ]
let s:p.normal.error    = [ [ s:red2,   s:bg ] ]
let s:p.normal.warning  = [ [ s:yellow, s:bg ] ]
let s:p.inactive.left   = [ [ s:bg,     s:gray3          ], s:box ]
let s:p.inactive.middle = [ [ s:gray3,  s:gray2 ] ]
let s:p.inactive.right  = [ [ s:bg,     s:gray3 ] ]
let s:p.insert.left     = [ [ s:bg,     s:blue,   'bold' ], s:box ]
let s:p.insert.right    = [ [ s:bg,     s:gray1,  'bold' ], s:box ]
let s:p.replace.left    = [ [ s:bg,     s:red1,   'bold' ], s:box ]
let s:p.replace.right   = [ [ s:bg,     s:gray1,  'bold' ], s:box ]
let s:p.visual.left     = [ [ s:bg,     s:purple, 'bold' ], s:box ]
let s:p.visual.right    = [ [ s:bg,     s:gray1,  'bold' ], s:box ]
let s:p.tabline.left    = [ s:box ]
let s:p.tabline.middle  = [ [ s:gray3,  s:gray2 ] ]
let s:p.tabline.right   = [ [ s:bg,     s:gray1,  'bold' ], s:box ]
let s:p.tabline.tabsel  = [ [ s:bg,     s:yellow, 'bold' ] ]

let g:lightline#colorscheme#polar#palette = lightline#colorscheme#flatten(s:p)
