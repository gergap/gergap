" Autoreload colorscheme on change
let FILE=expand("%:p:h")."/../colors/gergap.vim"
let FILE=resolve(FILE)
"echo "file=".FILE

function! Reload()
    echo "Reloading gergap colorscheme
    colorscheme gergap
endfunction

augroup WombatReload
    autocmd!
    autocmd BufWritePost FILE call Reload()
    "autocmd BufWritePost ~/vim/bundle/wombat256/colors/wombat256.vim colorscheme wombat256
augroup END

