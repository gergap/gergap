" gergap's Vim Colorscheme

" Choose default colors for a dark background
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "gergap"

" General colors
highlight Normal ctermbg=234
highlight LineNumber    ctermfg=241 ctermbg=none cterm=none
" used for the columns set with 'colorcolumn'
highlight ColorColumn   ctermfg=none ctermbg=0
" placeholder characters substituded for concealed text
"highlight Conceal
"Cursor          the character under the cursor
" We keep the default which switches forground and background color.
"CursorIM        like Cursor, but used when in IME mode CursorIM
"CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is
"                set
highlight CursorColumn  ctermbg=235 ctermfg=none cterm=none
"CursorLine      the screen line that the cursor is in when 'cursorline' is
"                set
highlight CursorLine    ctermbg=235 ctermfg=none cterm=none
"Directory       directory names (and other special names in listings)
"DiffAdd         diff mode: Added line diff.txt
highlight DiffAdd       ctermfg=238 ctermbg=118 cterm=none
"DiffChange      diff mode: Changed line diff.txt
highlight DiffChange    ctermfg=238 ctermbg=208 cterm=none
"DiffDelete      diff mode: Deleted line diff.txt
highlight DiffDelete    ctermfg=238 ctermbg=175 cterm=none
"DiffText        diff mode: Changed text within a changed line diff.txt
highlight DiffText      ctermfg=238 ctermbg=190 cterm=none
"ErrorMsg        error messages on the command line
"VertSplit       the column separating vertically split windows
highlight VertSplit     ctermfg=242 ctermbg=237 cterm=none
"Folded          line used for closed folds
highlight Folded        ctermbg=236 ctermfg=none cterm=none
"FoldColumn      'foldcolumn'
highlight FoldColumn    ctermbg=236 ctermfg=none cterm=none
"SignColumn      column where signs are displayed
"IncSearch       'incsearch' highlighting; also used for the text replaced with
"                ":s///c"
highlight IncSearch     ctermbg=204 ctermfg=238
"Search          Last search pattern highlighting (see 'hlsearch').
"                Also used for highlighting the current line in the quickfix
"                window and similar items that need to stand out.
highlight Search        ctermbg=156 ctermfg=238 cterm=none
"LineNr          Line number for ":number" and ":#" commands, and when 'number'
"                or 'relativenumber' option is set.
highlight LineNr        ctermfg=241 ctermbg=none cterm=none
"CursorLineNr    Like LineNr when 'cursorline' or 'relativenumber' is set for
"                the cursor line.
highlight CursorLineNr  ctermfg=253 ctermbg=none cterm=none
"MatchParen      The character under the cursor or just before it, if it
"                is a paired bracket, and its match. pi_paren.txt
highlight MatchParen    ctermfg=none ctermbg=238
"ModeMsg         'showmode' message (e.g., "-- INSERT --")
"MoreMsg         more-prompt
"NonText         '~' and '@' at the end of the window, characters from
"                'showbreak' and other characters that do not really exist in
"                the text (e.g., ">" displayed when a double-wide character
"                doesn't fit at the end of the line).
highlight NonText       ctermbg=none ctermfg=27 cterm=none
"SpecialKey      Meta and special keys listed with ":map", also for text used
"                to show unprintable characters in the text, 'listchars'.
"                Generally: text that is displayed differently from what it
"                really is.
highlight SpecialKey    ctermbg=none ctermfg=27 cterm=none
"Normal          normal text
"Pmenu           Popup menu: normal item.
highlight Pmenu         ctermfg=121   ctermbg=238
"PmenuSel        Popup menu: selected item.
highlight PmenuSel      ctermfg=238   ctermbg=121
"PmenuSbar       Popup menu: scrollbar.
"PmenuThumb      Popup menu: Thumb of the scrollbar.
"Question        hit-enter prompt and yes/no questions
"SpellBad        Word that is not recognized by the spellchecker. spell
highlight SpellBad      ctermfg=red ctermbg=none cterm=underline,bold
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
highlight StatusLine    ctermfg=246 ctermbg=236 cterm=none,bold
"StatusLineNC    status lines of not-current windows
"                Note: if this is equal to "StatusLine" Vim will use "^^^" in
"                the status line of the current window.
highlight StatusLineNC  ctermfg=240 ctermbg=234 cterm=none
"TabLine         tab pages line, not active tab page label
"TabLineFill     tab pages line, where there are no labels
"TabLineSel      tab pages line, active tab page label
"Title           titles for output from ":set all", ":autocmd" etc.
"Visual          Visual mode selection
"VisualNOS       Visual mode selection when vim is "Not Owning the Selection".
"                Only X11 Gui's gui-x11 and xterm-clipboard supports this.
"WarningMsg      warning messages
"WildMenu        current match in 'wildmenu' completion
highlight WildMenu      ctermfg=238 ctermbg=121 cterm=none
"Menu            Current font, background and foreground colors of the menus.
"                Also used for the toolbar.
"                Applicable highlight arguments: font, guibg, guifg.
"
"                NOTE: For Motif and Athena the font argument actually
"                specifies a fontset at all times, no matter if 'guifontset' is
"                empty, and as such it is tied to the current :language when
"                set.
"
highlight Menu          ctermfg=121 ctermbg=238 cterm=none
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

" Statement: linked by cStatement: goto, break, return, continue, asm
highlight Statement     ctermfg=39 ctermbg=none cterm=bold
" Label: linked by cLabel: case default
highlight Label         ctermfg=93 ctermbg=none cterm=none
" Conditional: linked by cConditional: if else switch
highlight Conditional   ctermfg=45 ctermbg=none cterm=none
" Repeat: linked by cRepeat: while for do
highlight Repeat        ctermfg=190 ctermbg=none cterm=none
" Todo: linkeds by cTodo: contained TODO FIXME XXX
highlight Todo          ctermfg=234 ctermbg=201 cterm=bold
" PreProc: #ifdef, #define ...
highlight PreProc       ctermfg=33 ctermbg=none cterm=none
" Type: linked by cType: bool. char, uint16_t, ...
highlight Type          ctermfg=199 ctermbg=none cterm=none
" Number: linked by 
highlight Number        ctermfg=202 ctermbg=none cterm=none
" Constant: linked by cConstant: NULL
highlight Constant      ctermfg=154 ctermbg=none cterm=none
" String: linked by cString, cppString, cIncluded
highlight String        ctermfg=121 ctermbg=none cterm=none
" Special: \n, \r,...
highlight Special       ctermfg=white ctermbg=none cterm=none
" Identifier: variable identifier names
highlight Identifier    ctermfg=white ctermbg=none cterm=none
" Error: various errors
highlight Error         ctermfg=red ctermbg=none cterm=underline,bold

" YouCompleteMe colors: YCM has a fallback to Syntastic colors,
" so we define the Syntastic variables here to make it working
" with both (even though I don't use Syntastic)
highlight SyntasticWarningSign  ctermfg=yellow  ctermbg=none    cterm=none
highlight SyntasticErrorSign    ctermfg=red     ctermbg=none    cterm=none
highlight SyntasticWarning      ctermfg=yellow  ctermbg=none    cterm=underline,bold
highlight SyntasticError        ctermfg=red     ctermbg=none    cterm=underline,bold
highlight YcmWarningSign        ctermfg=yellow  ctermbg=none    cterm=none
highlight YcmErrorSign          ctermfg=red     ctermbg=none    cterm=none
highlight YcmWarningSection     ctermfg=yellow  ctermbg=none    cterm=underline,bold
highlight YcmErrorSection       ctermfg=red     ctermbg=none    cterm=underline,bold

" ShowMarks highlighting
" for marks a-z
highlight ShowMarksHLl          ctermfg=45      ctermbg=none    cterm=none
" for marks A-Z
highlight ShowMarksHLu          ctermfg=39      ctermbg=none    cterm=none
" for all other marks
highlight ShowMarksHLm          ctermfg=39      ctermbg=none    cterm=none
" for multiple marks on the same line
highlight ShowMarksHLo          ctermfg=39      ctermbg=none    cterm=none

