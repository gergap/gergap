# gergap colorscheme

This is my brand new color scheme. Work in progress.

# Terminfo

This colorscheme uses italic fonts. To make this working in KDE Konsole (and other terminals)
you need to install these two terminfos.

    $> tic terminfo/screen-256color-italic.terminfo
    $> tic terminfo/xterm-256color-italic.terminfo

In KDE konsole open Settings->Edit Current Profile. In the General tab click on the Evironment "Edit..." button.
Add `TERM=xterm-256color-italic`.

To make this also working in TMUX add

    set -g default-terminal "screen-256color-italic"

to your ~/.tmux.conf.

Note: adding "TERM=..." to your .bashrc is a bad idea! The terminal application should always set this to the correct value.

