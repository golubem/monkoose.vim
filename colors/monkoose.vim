
" 'monkoose' theme for nvim with truecolor or gui only

" Initialisation: "{{{
" ----------------------------------------------------------------------------
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
"}}}
" ColorPallete: "{{{
" ----------------------------------------------------------------------------
exe "let s:fg_none         = ' guifg=none'"
exe "let s:fg_normal       = ' guifg=#bfbcb5'"
exe "let s:fg_black        = ' guifg=#121212'"
exe "let s:fg_red          = ' guifg=#e03650'"
exe "let s:fg_green        = ' guifg=#4d9c38'"
exe "let s:fg_orange       = ' guifg=#d97527'"
exe "let s:fg_blue         = ' guifg=#4e9ead'"
exe "let s:fg_purple       = ' guifg=#ba6cad'"
exe "let s:fg_darkgray     = ' guifg=#696969'"
exe "let s:fg_yellow       = ' guifg=#b8b258'"
exe "let s:fg_todo         = ' guifg=#d7ffaf'"
exe "let s:fg_cursor       = ' guifg=#242424'"
exe "let s:fg_fold         = ' guifg=#8e8eb3'"
exe "let s:fg_selection    = ' guifg=#4d4d4d'"
exe "let s:fg_lightgray    = ' guifg=#a8a8a8'"
exe "let s:fg_bluish       = ' guifg=#5f5f87'"
exe "let s:fg_diffdelete   = ' guifg=#b39797'"
exe "let s:fg_white        = ' guifg=#ffffff'"
exe "let s:fg_example      = ' guifg=#7d998a'"
exe "let s:fg_pmenu        = ' guifg=#8c8c8c'"

exe "let s:bg_none         = ' guibg=none'"
exe "let s:bg_normal       = ' guibg=#181818'"
exe "let s:bg_black        = ' guibg=#121212'"
exe "let s:bg_cursor       = ' guibg=#242424'"
exe "let s:bg_error        = ' guibg=#611818'"
exe "let s:bg_pmenusbar    = ' guibg=#333333'"
exe "let s:bg_search       = ' guibg=#0e471d'"
exe "let s:bg_bluish       = ' guibg=#5f5f87'"
exe "let s:bg_diffdelete   = ' guibg=#733e3e'"
exe "let s:bg_diffadd      = ' guibg=#3f593f'"
exe "let s:bg_diffchange   = ' guibg=#3f3f59'"
exe "let s:bg_difftext     = ' guibg=#594936'"
exe "let s:bg_selection    = ' guibg=#4d4d4d'"
exe "let s:bg_pmenu        = ' guibg=#3d3d3d'"
exe "let s:bg_spell        = ' guibg=#42421b'"
exe "let s:bg_spellbad     = ' guibg=#4d1313'"
exe "let s:bg_fold         = ' guibg=#272738'"

exe "let s:fmt_none        = ' gui=none'"
exe "let s:fmt_bold        = ' gui=bold'"
exe "let s:fmt_ital        = ' gui=italic'"
exe "let s:fmt_undr        = ' gui=underline'"
"}}}
" Basic Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------

exe 'hi! Comment'       .s:fg_darkgray     .s:bg_none        .s:fmt_none

exe 'hi! Constant'      .s:fg_purple       .s:bg_none        .s:fmt_none
exe 'hi! String'        .s:fg_yellow       .s:bg_none        .s:fmt_none
"		Character
exe 'hi! Number'        .s:fg_purple       .s:bg_none        .s:fmt_none
"		Boolean
"		Float

exe 'hi! Identifier'    .s:fg_orange       .s:bg_none        .s:fmt_none
exe 'hi! Function'      .s:fg_green        .s:bg_none        .s:fmt_none

exe 'hi! Statement'     .s:fg_blue         .s:bg_none        .s:fmt_none
"		Conditional"
"		Repeat"
"		Label"
exe 'hi! Operator'      .s:fg_red          .s:bg_none        .s:fmt_none
"		Keyword"
"		Exception"

exe 'hi! PreProc'       .s:fg_red          .s:bg_none        .s:fmt_none
"		Include"
"		Define"
"		Macro"
"		PreCondit"

exe 'hi! Type'          .s:fg_orange       .s:bg_none        .s:fmt_none
"		StorageClass"
exe 'hi! Structure'     .s:fg_purple       .s:bg_none        .s:fmt_none
"		Typedef"

exe 'hi! Special'       .s:fg_red          .s:bg_none        .s:fmt_none
"		SpecialChar"
"		Tag"
"		Delimiter"
"		SpecialComment"
"		Debug"
"
exe 'hi! Underlined'    .s:fg_none         .s:bg_none        .s:fmt_undr
exe 'hi! Ignore'        .s:fg_none         .s:bg_none        .s:fmt_none
exe 'hi! Error'         .s:fg_none         .s:bg_error       .s:fmt_none
exe 'hi! Todo'          .s:fg_todo         .s:bg_none        .s:fmt_bold

"}}}
" Extended Highlighting: (see :help highlight-default)"{{{
" ----------------------------------------------------------------------------
exe 'hi! ColorColumn'   .s:fg_none         .s:bg_cursor      .s:fmt_none
"		Conceal"
"		Cursor"
"		CursorIM"
exe 'hi! CursorColumn'  .s:fg_none         .s:bg_cursor      .s:fmt_none
exe 'hi! CursorLine'    .s:fg_none         .s:bg_cursor      .s:fmt_none
exe 'hi! Directory'     .s:fg_blue         .s:bg_none        .s:fmt_none
exe 'hi! DiffAdd'       .s:fg_lightgray    .s:bg_diffadd     .s:fmt_none
exe 'hi! DiffChange'    .s:fg_lightgray    .s:bg_diffchange  .s:fmt_none
exe 'hi! DiffDelete'    .s:fg_diffdelete   .s:bg_diffdelete  .s:fmt_none
exe 'hi! DiffText'      .s:fg_lightgray    .s:bg_difftext    .s:fmt_none
exe 'hi! ErrorMsg'      .s:fg_red          .s:bg_none        .s:fmt_bold
exe 'hi! VertSplit'     .s:fg_none         .s:bg_black       .s:fmt_none
exe 'hi! Folded'        .s:fg_fold         .s:bg_fold        .s:fmt_none
exe 'hi! FoldColumn'    .s:fg_none         .s:bg_black       .s:fmt_none
exe 'hi! SignColumn'    .s:fg_none         .s:bg_black       .s:fmt_none
"		Incsearch"
exe 'hi! LineNr'        .s:fg_darkgray     .s:bg_black       .s:fmt_none
exe 'hi! CursorLineNr'  .s:fg_orange       .s:bg_black       .s:fmt_none
exe 'hi! MatchParen'    .s:fg_none         .s:bg_bluish      .s:fmt_none
exe 'hi! ModeMsg'       .s:fg_green        .s:bg_none        .s:fmt_none
exe 'hi! MoreMsg'       .s:fg_green        .s:bg_none        .s:fmt_none
exe 'hi! NonText'       .s:fg_selection    .s:bg_none        .s:fmt_none
exe 'hi! Pmenu'         .s:fg_pmenu        .s:bg_pmenu       .s:fmt_none
exe
exe 'hi! PmenuSel'      .s:fg_orange       .s:bg_selection   .s:fmt_none
exe 'hi! PmenuSbar'     .s:fg_none         .s:bg_pmenusbar   .s:fmt_none
exe 'hi! PmenuThumb'    .s:fg_none         .s:bg_selection   .s:fmt_none
exe 'hi! Question'      .s:fg_green        .s:bg_none        .s:fmt_none
exe 'hi! Search'        .s:fg_none         .s:bg_search      .s:fmt_none
exe 'hi! SpecialKey'    .s:fg_bluish       .s:bg_none        .s:fmt_none
exe 'hi! SpellCap'      .s:fg_none         .s:bg_spell       .s:fmt_none
exe 'hi! SpellLocal'    .s:fg_none         .s:bg_spell       .s:fmt_none
exe 'hi! SpellRare'     .s:fg_none         .s:bg_spell       .s:fmt_none
exe 'hi! SpellBad'      .s:fg_none         .s:bg_spellbad    .s:fmt_none
exe 'hi! StatusLine'    .s:fg_none         .s:bg_black       .s:fmt_none
exe 'hi! StatusLineNC'  .s:fg_selection    .s:bg_black       .s:fmt_none
exe 'hi! TabLine'       .s:fg_lightgray    .s:bg_black       .s:fmt_none
exe 'hi! TabLineFill'   .s:fg_lightgray    .s:bg_black       .s:fmt_none
"		TabLineSel"
exe 'hi! Title'         .s:fg_orange       .s:bg_none        .s:fmt_none
exe 'hi! Visual'        .s:fg_none         .s:bg_selection   .s:fmt_none
exe 'hi! WarningMsg'    .s:fg_orange       .s:bg_none        .s:fmt_none
exe 'hi! WildMenu'      .s:fg_purple       .s:bg_black       .s:fmt_none

exe 'hi! Normal'        .s:fg_normal       .s:bg_normal      .s:fmt_none

" Quickfix window highlighting
exe 'hi! qfLineNr'      .s:fg_yellow       .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfError"
"}}}
" Vim Syntax Highlighting: "{{{
" ---------------------------------------------------------------------
hi link  vimVar         Identifier
hi link  vimFunc        Function
hi link  vimUserFunc    Function
hi link  helpSpecial    Special
exe 'hi! helpExample'         .s:fg_example  .s:bg_none      .s:fmt_none
exe 'hi! helpCommand'         .s:fg_purple   .s:bg_none      .s:fmt_none
exe 'hi! helpHyperTextJump'   .s:fg_blue     .s:bg_none      .s:fmt_undr
exe 'hi! helpHyperTextEntry'  .s:fg_green    .s:bg_none      .s:fmt_none
"}}}
" Python Syntax Highlighting: "{{{
" ----------------------------------------------------------------------------
hi link  pythonClass          Function
hi link  pythonBuiltinType    Normal
hi link  pythonCoding         Comment
hi link  pythonRun            Comment
hi link  pythonRepeat         pythonStatement
hi link  pythonConditional    pythonStatement
hi link  pythonException      pythonStatement
hi link  pythonStrFormat      Constant
exe 'hi! pythonDefClass'      .s:fg_blue         .s:bg_none        .s:fmt_ital
exe 'hi! pythonStatement'     .s:fg_red          .s:bg_none        .s:fmt_none
exe 'hi! pythonSelf'          .s:fg_orange       .s:bg_none        .s:fmt_ital
"}}}
" HTML Syntax Highlighting: "{{{
" ---------------------------------------------------------------------
hi link htmlTag         Normal
hi link htmlEndTag      Normal
exe 'hi! htmlTagName'   .s:fg_red          .s:bg_none        .s:fmt_none
exe 'hi! htmlArg'       .s:fg_green        .s:bg_none        .s:fmt_none
hi link djangoVarBlock    Normal
hi link djangoTagBlock    Normal
exe 'hi! djangoStatement' .s:fg_purple     .s:bg_none        .s:fmt_none
"}}}
" CSS Syntax Highlighting: "{{{
" ---------------------------------------------------------------------
" hi link htmlEndTag      Normal
exe 'hi! cssIdentifier'   .s:fg_orange     .s:bg_none        .s:fmt_none
exe 'hi! cssProp'         .s:fg_blue       .s:bg_none        .s:fmt_ital
"}}}
" Markdown Syntax Highlighting: "{{{
" ---------------------------------------------------------------------
exe 'hi! mkdListItem'     .s:fg_green   .s:bg_none     .s:fmt_none
exe 'hi! mkdURL'          .s:fg_blue    .s:bg_none     .s:fmt_undr
exe 'hi! mkdLinkDef'      .s:fg_purple  .s:bg_none     .s:fmt_none
"}}}
" Syntastic Syntax Highlighting: "{{{
" ----------------------------------------------------------------------------
exe 'hi! SyntasticErrorSign'   .s:fg_red      .s:bg_black    .s:fmt_bold
exe 'hi! SyntasticWarningSign' .s:fg_orange   .s:bg_black    .s:fmt_bold
"}}}
" Jedi-Vim Syntax Highlighting: "{{{
" ----------------------------------------------------------------------------
hi link jediFat Identifier
hi link jediFunction Comment
"}}}
" Easy-Motion Syntax Highlighting: "{{{
" ----------------------------------------------------------------------------
exe 'hi! EasyMotionIncCursorDefault'  .s:fg_none   .s:bg_none   .s:fmt_none
"}}}
" Startify Syntax Highlighting: "{{{
" ----------------------------------------------------------------------------
exe 'hi! StartifySection'   .s:fg_green        .s:bg_none        .s:fmt_none
"}}}
" NERDTree Highlighting: "{{{
" ----------------------------------------------------------------------------
hi link  NERDTreeOpenable   String
hi link  NERDTreeClosable   String
hi link  NERDTreeHelp       Comment
hi link  NERDTreeUp         Comment
exe 'hi! NERDTreeDirSlash'  .s:fg_lightgray  .s:bg_none      .s:fmt_bold
exe 'hi! NERDTreeDir'       .s:fg_blue       .s:bg_none      .s:fmt_bold
exe 'hi! NERDTreeCWD'       .s:fg_purple     .s:bg_none      .s:fmt_bold
"}}}
" Tagbar Highlighting: "{{{
" ----------------------------------------------------------------------------
hi link  TagbarType   Statement
hi link  TagbarScope  Function
"}}}
" License: "{{{
" ----------------------------------------------------------------------------
" Copyright (c) 2016 monkoose
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" vim:foldmethod=marker:foldlevel=0
" }}}
