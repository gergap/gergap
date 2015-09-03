" gergap's Vim Colorscheme

" Choose default colors for a dark background
"set background=dark
exe "highlight!  clear"
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "gergap"

" Define colorscheme palette
let s:black = 16
let s:white = 231
let s:gray1 = 232
let s:gray2 = 234
let s:gray3 = 236
let s:gray4 = 238
let s:gray5 = 240
let s:gray6 = 242
let s:gray7 = 244
let s:gray8 = 246
let s:red   = 1
let s:red2  = 203
let s:purple = 90
let s:magenta = 201
let s:magenta2 = 165
let s:green = 154
let s:green2 = 48
let s:green3 = 121
let s:yellow = 226
let s:orange = 202
let s:blue   = 27
let s:blue2  = 33
let s:blue3  = 39
let s:blue4  = 45
let s:cyan   = 51

" General colors
if &background == "light"
    let s:bgcolor = s:white
    let s:linenr_fgcolor = s:gray8
    let s:linenr_bgcolor = s:blue
else
    let s:bgcolor = s:gray2
    let s:linenr_fgcolor = s:gray6
    let s:linenr_bgcolor = s:gray3
endif

exe "highlight! Normal ctermbg=".s:bgcolor
" used for the columns set with 'colorcolumn'
exe "highlight!  ColorColumn   ctermfg=none ctermbg=0"
" placeholder characters substituded for concealed text
exe "highlight! Conceal ctermfg=".s:gray2." ctermbg=".s:blue4." cterm=none"
"Cursor          the character under the cursor
" We keep the default which switches forground and background color.
"CursorIM        like Cursor, but used when in IME mode CursorIM
"CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is
"                set
exe "highlight!  CursorColumn  ctermbg=".s:gray3." ctermfg=none cterm=none"
"CursorLine      the screen line that the cursor is in when 'cursorline' is
"                set
exe "highlight!  CursorLine    ctermbg=".s:gray3." ctermfg=none cterm=none"
"Directory       directory names (and other special names in listings)
"DiffAdd         diff mode: Added line diff.txt
exe "highlight!  DiffAdd       ctermfg=".s:gray4." ctermbg=118 cterm=none"
"DiffChange      diff mode: Changed line diff.txt
exe "highlight!  DiffChange    ctermfg=".s:gray4." ctermbg=208 cterm=none"
"DiffDelete      diff mode: Deleted line diff.txt
exe "highlight!  DiffDelete    ctermfg=".s:gray4." ctermbg=175 cterm=none"
"DiffText        diff mode: Changed text within a changed line diff.txt
exe "highlight!  DiffText      ctermfg=".s:gray4." ctermbg=190 cterm=none"
"ErrorMsg        error messages on the command line
"VertSplit       the column separating vertically split windows
exe "highlight!  VertSplit     ctermfg=242 ctermbg=237 cterm=none"
"Folded          line used for closed folds
exe "highlight!  Folded        ctermbg=236 ctermfg=none cterm=none"
"FoldColumn      'foldcolumn'
exe "highlight!  FoldColumn    ctermbg=236 ctermfg=none cterm=none"
"SignColumn      column where signs are displayed
exe "highlight!  SignColumn ctermfg=".s:linenr_fgcolor." ctermbg=".s:linenr_bgcolor
"IncSearch       'incsearch' highlighting; also used for the text replaced with
"                ":s///c"
exe "highlight!  IncSearch     ctermbg=204 ctermfg=".s:gray4
"Search          Last search pattern highlighting (see 'hlsearch').
"                Also used for highlighting the current line in the quickfix
"                window and similar items that need to stand out.
exe "highlight!  Search        ctermbg=156 ctermfg=".s:gray4." cterm=none"
"LineNr          Line number for ":number" and ":#" commands, and when 'number'
"                or 'relativenumber' option is set.
exe "highlight! LineNr ctermfg=".s:linenr_fgcolor." ctermbg=".s:linenr_bgcolor
"CursorLineNr    Like LineNr when 'cursorline' or 'relativenumber' is set for
"                the cursor line.
exe "highlight! CursorLineNr ctermfg=".s:white." ctermbg=".s:linenr_bgcolor
"MatchParen      The character under the cursor or just before it, if it
"                is a paired bracket, and its match. pi_paren.txt
exe "highlight!  MatchParen    ctermfg=none ctermbg=".s:gray4
"ModeMsg         'showmode' message (e.g., "-- INSERT --")
"MoreMsg         more-prompt
"NonText         '~' and '@' at the end of the window, characters from
"                'showbreak' and other characters that do not really exist in
"                the text (e.g., ">" displayed when a double-wide character
"                doesn't fit at the end of the line).
exe "highlight!  NonText       ctermbg=none ctermfg=27 cterm=none"
"SpecialKey      Meta and special keys listed with ":map", also for text used
"                to show unprintable characters in the text, 'listchars'.
"                Generally: text that is displayed differently from what it
"                really is.
exe "highlight!  SpecialKey    ctermbg=none ctermfg=27 cterm=none"
"Normal          normal text
"Pmenu           Popup menu: normal item.
exe "highlight!  Pmenu         ctermfg=121   ctermbg=".s:gray4
"PmenuSel        Popup menu: selected item.
exe "highlight!  PmenuSel      ctermfg=".s:gray4."   ctermbg=121"
"PmenuSbar       Popup menu: scrollbar.
"PmenuThumb      Popup menu: Thumb of the scrollbar.
"Question        hit-enter prompt and yes/no questions
"SpellBad        Word that is not recognized by the spellchecker. spell
exe "highlight!  SpellBad      ctermfg=red ctermbg=none cterm=underline,bold"
"                This will be combined with the highlighting used otherwise.
"SpellCap        Word that should start with a capital. spell
"                This will be combined with the highlighting used otherwise.
"SpellLocal      Word that is recognized by the spellchecker as one that is
"                used in another region. spell
"                This will be combined with the highlighting used otherwise.
"SpellRare       Word that is recognized by the spellchecker as one that is
"                hardly ever used. spell
"                This will be combined with the highlighting used otherwise.
"StatusLine      status line of current window
exe "highlight!  StatusLine    ctermfg=246 ctermbg=237 cterm=none,bold"
"StatusLineNC    status lines of not-current windows
"                Note: if this is equal to "StatusLine" Vim will use "^^^" in
"                the status line of the current window.
exe "highlight!  StatusLineNC  ctermfg=240 ctermbg=237 cterm=none"
"TabLine         tab pages line, not active tab page label
"TabLineFill     tab pages line, where there are no labels
"TabLineSel      tab pages line, active tab page label
"Title           titles for output from ":set all", ":autocmd" etc.
"Visual          Visual mode selection
"VisualNOS       Visual mode selection when vim is "Not Owning the Selection".
"                Only X11 Gui's gui-x11 and xterm-clipboard supports this.
"WarningMsg      warning messages
"WildMenu        current match in 'wildmenu' completion
exe "highlight!  WildMenu      ctermfg=".s:gray4." ctermbg=121 cterm=none"
"Menu            Current font, background and foreground colors of the menus.
"                Also used for the toolbar.
"                Applicable highlight arguments: font, guibg, guifg.
"
"                NOTE: For Motif and Athena the font argument actually
"                specifies a fontset at all times, no matter if 'guifontset' is
"                empty, and as such it is tied to the current :language when
"                set.
"
exe "highlight!  Menu          ctermfg=121 ctermbg=".s:gray4." cterm=none"
"Scrollbar       Current background and foreground of the main window's
"                scrollbars.
"                Applicable highlight arguments: guibg, guifg.
"
"Tooltip         Current font, background and foreground of the tooltips.
"                Applicable highlight arguments: font, guibg, guifg.
"
"                NOTE: For Motif and Athena the font argument actually
"                specifies a fontset at all times, no matter if 'guifontset' is
"                empty, and as such it is tied to the current :language when
"                set.
"

" Syntax highlighting

" Comments: any comment
exe "highlight!  Comment       ctermfg=48 ctermbg=none cterm=italic"
" Identifier: variable identifier names
exe "highlight!  Identifier    ctermfg=250 ctermbg=none cterm=none"
" Function: function name (also: methods for classes)
exe "highlight!  Function    ctermfg=154 ctermbg=none cterm=none"
" Statement: linked by cStatement: goto, break, return, continue, asm
exe "highlight!  Statement     ctermfg=39 ctermbg=none cterm=bold"
" Conditional: linked by cConditional: if else switch
exe "highlight!  Conditional   ctermfg=45 ctermbg=none cterm=bold"
" Repeat: linked by cRepeat: while for do
exe "highlight!  Repeat        ctermfg=33 ctermbg=none cterm=bold"
" Label: linked by cLabel: case default
exe "highlight!  Label         ctermfg=163 ctermbg=none cterm=none"
" Operator: sizeof, "+", "*", etc.
exe "highlight!  Operator         ctermfg=39 ctermbg=none cterm=none"
" Keyword: any other keyword
exe "highlight!  Keyword         ctermfg=163 ctermbg=none cterm=none"
" Exception: try catch throw
exe "highlight!  Exception         ctermfg=163 ctermbg=none cterm=none"
" PreProc: generic preprocessor
exe "highlight!  PreProc       ctermfg=33 ctermbg=none cterm=none"
" Include: #include
exe "highlight!  Include       ctermfg=33 ctermbg=none cterm=none"
" Define: #define
exe "highlight!  Define       ctermfg=33 ctermbg=none cterm=none"
" PreCondit: #if, #else, #endif, etc.
exe "highlight!  PreCondit       ctermfg=33 ctermbg=none cterm=none"
" cCppOutWrapper: #if 0, #endif
exe "highlight!  cCppOutWrapper ctermfg=240 ctermbg=none cterm=italic"
" code between #if 0 and #endif
exe "highlight!  cCppOutIf2 ctermfg=240 ctermbg=none cterm=italic"
" cCppInWrapper: #if 1, #endif
exe "highlight!  cCppInWrapper ctermfg=green ctermbg=none cterm=none"
" Type: linked by cType: bool. char, uint16_t, ...
exe "highlight!  Type          ctermfg=226 ctermbg=none cterm=bold"
" Storage class: static, register, volatile, etc.
exe "highlight!  StorageClass ctermfg=199 ctermbg=none cterm=bold"
" Structure: struct, union, enum, etc.
exe "highlight!  Structure ctermfg=199 ctermbg=none cterm=bold"
" Typedef
exe "highlight!  Typedef ctermfg=199 ctermbg=none cterm=bold"
" Number: linked by 
exe "highlight!  Number        ctermfg=202 ctermbg=none cterm=none"
" Constant: linked by cConstant: NULL
exe "highlight!  Constant      ctermfg=154 ctermbg=none cterm=none"
" String: linked by cString, cppString, cIncluded
exe "highlight!  String        ctermfg=121 ctermbg=none cterm=none"
" Special: \n, \r,...
exe "highlight!  Special       ctermfg=231 ctermbg=none cterm=none"
" Special: \n, \r,...
exe "highlight!  SpecialChar   ctermfg=231 ctermbg=none cterm=none"
" Tag: you can use CTRL-] on this
exe "highlight!  Tag       ctermfg=33 ctermbg=none cterm=none"
" Delimiter: character that needs attention
exe "highlight!  Delimiter       ctermfg=231 ctermbg=none cterm=none"
" SpecialComment: special things inside a comment
exe "highlight!  SpecialComment       ctermfg=231 ctermbg=none cterm=none"
" debugging statements
exe "highlight!  Debug         ctermfg=231 ctermbg=none cterm=none"
" Underlined: text that stands out, HTML links
exe "highlight!  Underlined    ctermfg=39 ctermbg=none cterm=underline"
" Ignore: left blank, hidden
exe "highlight!  Ignore        ctermfg=none ctermbg=none cterm=none"
" Error: various errors
exe "highlight!  Error         ctermfg=red ctermbg=none cterm=underline,bold"
" Todo: linkeds by cTodo: contained TODO FIXME XXX
exe "highlight!  Todo          ctermfg=201 ctermbg=none cterm=bold"

" YouCompleteMe colors: YCM has a fallback to Syntastic colors,
" so we define the Syntastic variables here to make it working
" with both (even though I don't use Syntastic)
exe "highlight!  SyntasticWarningSign  ctermfg=yellow  ctermbg=none    cterm=none"
exe "highlight!  SyntasticErrorSign    ctermfg=red     ctermbg=none    cterm=none"
exe "highlight!  SyntasticWarning      ctermfg=yellow  ctermbg=none    cterm=underline,bold"
exe "highlight!  SyntasticError        ctermfg=red     ctermbg=none    cterm=underline,bold"
exe "highlight!  YcmWarningSign        ctermfg=yellow  ctermbg=none    cterm=none"
exe "highlight!  YcmErrorSign          ctermfg=red     ctermbg=none    cterm=none"
exe "highlight!  YcmWarningSection     ctermfg=yellow  ctermbg=none    cterm=underline,bold"
exe "highlight!  YcmErrorSection       ctermfg=red     ctermbg=none    cterm=underline,bold"

" ShowMarks highlighting
" for marks a-z
exe "highlight!  ShowMarksHLl          ctermfg=45      ctermbg=".s:linenr_bgcolor." cterm=none"
" for marks A-Z
exe "highlight!  ShowMarksHLu          ctermfg=39      ctermbg=".s:linenr_bgcolor." cterm=none"
" for all other marks
exe "highlight!  ShowMarksHLm          ctermfg=39      ctermbg=".s:linenr_bgcolor." cterm=none"
" for multiple marks on the same line
exe "highlight!  ShowMarksHLo          ctermfg=39      ctermbg=".s:linenr_bgcolor." cterm=none"

" VimWiki
exe "highlight!  VimwikiHeader1 ctermfg=231"
exe "highlight!  VimwikiHeader2 ctermfg=231"
exe "highlight!  VimwikiHeader3 ctermfg=231"
exe "highlight!  VimwikiHeader4 ctermfg=231"
exe "highlight!  VimwikiHeader5 ctermfg=231"
exe "highlight!  VimwikiHeader6 ctermfg=231"

