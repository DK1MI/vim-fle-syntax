# vim-fle-syntax

VIM syntax plugin for writing Fast Log Entry (https://df3cb.com/fle/) compatible log files in VIM

# Screenshot

![screenshot](/screenshot.jpg?raw=true "screenshot")

## Description

Vim syntax file to imitate the syntax highting of Fast Log Entry (FLE).

## Why?

Because it's nice to take a small GNU/Linux based laptop with me on portable operations, just log everything with VIM and do the rest at home.

## Extras / Shortcuts

You can insert the current time in UTC and HHMM format by pressing <F5> and the current date string by pressing <F6> if you add the following lines to your .vimrc file:

    "Insert current time in HHMM format with <F5>
    let $TZ='UTC'
    :nnoremap <F5> "=strftime("%H%M ")<CR>P
    :inoremap <F5> <C-R>=strftime("%H%M ")<CR>
    "Insert current date with <F6>
    :nnoremap <F6> "=strftime("date %G-%m-%d")<CR>P
    :inoremap <F6> <C-R>=strftime("date %G-%m-%d")<CR>

## Install

Copy or symlink these files to your $VIMRUNTIME/syntax and $VIMRUNTIME/ftdetect directory or to
~/.vim/syntax and ~/.vim/ftdetect directories
