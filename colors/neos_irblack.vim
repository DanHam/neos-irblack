" neos_irblack color scheme
"
" A custom Vim colour scheme adapted from:
" https://github.com/wesgibbs/vim-irblack.git

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "neos_irblack"


"hi Example         ctermfg=NONE        ctermbg=NONE        cterm=NONE

" General colors
hi   Normal        ctermfg=245       ctermbg=NONE      cterm=NONE
hi   NonText       ctermfg=black     ctermbg=NONE      cterm=NONE
hi   Cursor        ctermfg=black     ctermbg=white     cterm=reverse
hi   LineNr        ctermfg=darkgray  ctermbg=NONE      cterm=NONE
hi   VertSplit     ctermfg=darkgray  ctermbg=darkgray  cterm=NONE
hi   StatusLine    ctermfg=white     ctermbg=darkgray  cterm=NONE
hi   StatusLineNC  ctermfg=blue      ctermbg=darkgray  cterm=NONE
hi   Folded        ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi   Title         ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi   Visual        ctermfg=NONE      ctermbg=233       cterm=NONE
hi   SpecialKey    ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi   WildMenu      ctermfg=black     ctermbg=yellow    cterm=NONE
hi   PmenuSbar     ctermfg=black     ctermbg=white     cterm=NONE
"hi  Ignore        ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi   Error         ctermfg=white     ctermbg=red       cterm=NONE
hi   ErrorMsg      ctermfg=white     ctermbg=red       cterm=NONE
hi   WarningMsg    ctermfg=white     ctermbg=red       cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          ctermfg=232       ctermbg=237    cterm=NONE

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorColumn   ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen     ctermfg=white       ctermbg=darkgray    cterm=NONE
  hi Pmenu          ctermfg=28          ctermbg=233         cterm=NONE
  hi PmenuSel       ctermfg=green       ctermbg=236         cterm=NONE
  hi Search         ctermfg=16          ctermbg=190         cterm=NONE
endif

" Syntax highlighting
hi  Comment      ctermfg=237        ctermbg=NONE  cterm=NONE
hi  String       ctermfg=238        ctermbg=NONE  cterm=NONE
hi  Number       ctermfg=130        ctermbg=NONE  cterm=NONE
hi  Keyword      ctermfg=109        ctermbg=NONE  cterm=NONE
hi  PreProc      ctermfg=blue       ctermbg=NONE  cterm=NONE
hi  Conditional  ctermfg=23         ctermbg=NONE  cterm=NONE
hi  Todo         ctermfg=red        ctermbg=NONE  cterm=NONE
hi  Constant     ctermfg=81         ctermbg=NONE  cterm=NONE
hi  Identifier   ctermfg=94         ctermbg=NONE  cterm=NONE
hi  Function     ctermfg=blue       ctermbg=NONE  cterm=NONE
hi  Type         ctermfg=blue        ctermbg=NONE  cterm=NONE
hi  Statement    ctermfg=24         ctermbg=NONE  cterm=NONE
hi  Special      ctermfg=81         ctermbg=NONE  cterm=NONE
hi  Delimiter    ctermfg=cyan       ctermbg=NONE  cterm=NONE
hi  Operator     ctermfg=178        ctermbg=NONE  cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" Special for Ruby
hi rubyRegexp                  ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }
hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type

" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag
hi javaDocSeeTag              ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              ctermfg=white       ctermbg=NONE        cterm=NONE

" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier

" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier

" Special for Javascript
hi link javaScriptNumber      Number

" Special for CSharp
hi link csXmlTag             Keyword

" VimDiff
hi DiffChange ctermfg=NONE ctermbg=235
hi DiffText   ctermfg=226  ctermbg=240
hi DiffAdd    ctermfg=40   ctermbg=235
hi DiffDelete ctermfg=124  ctermbg=235
