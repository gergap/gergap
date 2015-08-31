" a little test syntax for testing colorschemes
" this highlights a file where lines starting 
" with a HL group name are highlighted with this group
if exists("b:current_syntax")
    finish
endif
let b:current_syntax = "gergap"

let hlgroups = [
            \ "Normal",
            \ "LineNumber",
            \ "ColorColumn",
            \ "Conceal",
            \ "Cursor",
            \ "CursorIM",
            \ "CursorColumn",
            \ "CursorLine",
            \ "Directory",
            \ "DiffAdd",
            \ "DiffChange",
            \ "DiffDelete",
            \ "DiffText",
            \ "ErrorMsg",
            \ "VertSplit",
            \ "Folded",
            \ "FoldColumn",
            \ "SignColumn",
            \ "IncSearch",
            \ "Search",
            \ "LineNr",
            \ "CursorLineNr",
            \ "MatchParen",
            \ "ModeMsg",
            \ "MoreMsg",
            \ "NonText",
            \ "SpecialKey",
            \ "Pmenu",
            \ "PmenuSel",
            \ "PmenuSbar",
            \ "PmenuThumb",
            \ "Question",
            \ "SpellBad",
            \ "SpellCap",
            \ "SpellLocal",
            \ "SpellRare",
            \ "StatusLine",
            \ "StatusLineNC",
            \ "TabLine",
            \ "TabLineFill",
            \ "TabLineSel",
            \ "Title",
            \ "Visual",
            \ "VisualNOS",
            \ "WarningMsg",
            \ "WildMenu",
            \ "Menu",
            \ "Scrollbar",
            \ "Tooltip",
            \ "Comment",
            \ "Identifier",
            \ "Function",
            \ "Statement",
            \ "Conditional",
            \ "Repeat",
            \ "Label",
            \ "Operator",
            \ "Keyword",
            \ "Exception",
            \ "PreProc",
            \ "Include",
            \ "Define",
            \ "PreCondit",
            \ "Type",
            \ "StorageClass",
            \ "Structure",
            \ "Typedef",
            \ "Number",
            \ "Constant",
            \ "String",
            \ "Special",
            \ "SpecialChar",
            \ "Tag",
            \ "Delimiter",
            \ "SpecialComment",
            \ "Debug",
            \ "Underlined",
            \ "Ignore",
            \ "Error",
            \ "Todo",
            \ "SyntasticWarningSign",
            \ "SyntasticErrorSign",
            \ "SyntasticWarning",
            \ "SyntasticError",
            \ "YcmWarningSign",
            \ "YcmErrorSign",
            \ "YcmWarningSection",
            \ "YcmErrorSection",
            \ "ShowMarksHLl",
            \ "ShowMarksHLu",
            \ "ShowMarksHLm",
            \ "ShowMarksHLo"
            \ ]

for hg in hlgroups
    exe 'syntax match '.hg.' "^'.hg.'.*"'
endfor

" Colors
syntax keyword myBlack      Black
syntax keyword myWhite      White
syntax keyword myGray1      Gray1
syntax keyword myGray2      Gray2
syntax keyword myGray3      Gray3
syntax keyword myGray4      Gray4
syntax keyword myGray5      Gray5
syntax keyword myGray6      Gray6
syntax keyword myGray7      Gray7
syntax keyword myGray8      Gray8
syntax keyword myRed        Red
syntax keyword myRed2       Red2
syntax keyword myMagenta    Magenta
syntax keyword myMagenta2   Magenta2
syntax keyword myPurple     Purple
syntax keyword myGreen      Green
syntax keyword myGreen2     Green2
syntax keyword myGreen3     Green3
syntax keyword myYellow     Yellow
syntax keyword myOrange     Orange
syntax keyword myBlue       Blue
syntax keyword myBlue2      Blue2
syntax keyword myBlue3      Blue3
syntax keyword myBlue4      Blue4
syntax keyword myCyan       Cyan

highlight myBlack   ctermfg=16  ctermbg=250 cterm=none
highlight myWhite   ctermfg=231 ctermbg=none cterm=none
highlight myGray1   ctermfg=232 ctermbg=250 cterm=none
highlight myGray2   ctermfg=234 ctermbg=250 cterm=none
highlight myGray3   ctermfg=236 ctermbg=250 cterm=none
highlight myGray4   ctermfg=238 ctermbg=250 cterm=none
highlight myGray5   ctermfg=240 ctermbg=none cterm=none
highlight myGray6   ctermfg=242 ctermbg=none cterm=none
highlight myGray7   ctermfg=244 ctermbg=none cterm=none
highlight myGray8   ctermfg=246 ctermbg=none cterm=none
highlight myRed     ctermfg=red ctermbg=none cterm=none
highlight myRed2    ctermfg=203 ctermbg=none cterm=none
highlight myPurple  ctermfg=90 ctermbg=none cterm=none
highlight myMagenta2 ctermfg=165 ctermbg=none cterm=none
highlight myMagenta ctermfg=201 ctermbg=none cterm=none
highlight myGreen   ctermfg=154 ctermbg=none cterm=none
highlight myGreen2  ctermfg=48 ctermbg=none cterm=none
highlight myGreen3  ctermfg=121 ctermbg=none cterm=none
highlight myYellow  ctermfg=226 ctermbg=none cterm=none
highlight myOrange  ctermfg=202 ctermbg=none cterm=none
highlight myBlue    ctermfg=27 ctermbg=none cterm=none
highlight myBlue2   ctermfg=33 ctermbg=none cterm=none
highlight myBlue3   ctermfg=39 ctermbg=none cterm=none
highlight myBlue4   ctermfg=45 ctermbg=none cterm=none
highlight myCyan    ctermfg=51 ctermbg=none cterm=none
