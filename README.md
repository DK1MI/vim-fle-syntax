# vim-fle-syntax

Vim syntax plugin for writing Fast Log Entry (https://df3cb.com/fle/) compatible log files in Vim.

# Screenshot

![screenshot](/screenshot.jpg?raw=true "screenshot")

## Why?

Because it's nice to take a small GNU/Linux based laptop with me on portable operations, just log everything with Vim and do the rest at home.

## Extras / Shortcuts

You can insert the current time in UTC and HHMM format by pressing <F5> and the current date string by pressing <F6> if you add the following lines to your .vimrc file:

    " set timezone to UTC
    let $TZ='UTC'
    
    " insert current time in HHMM format with <F5>
    :nnoremap <F5> "=strftime("%H%M ")<CR>P
    :inoremap <F5> <C-R>=strftime("%H%M ")<CR>
    
    " insert current date with <F6>
    :nnoremap <F6> "=strftime("date %G-%m-%d")<CR>P
    :inoremap <F6> <C-R>=strftime("date %G-%m-%d")<CR>

## Install

Copy or symlink these files to your _$VIMRUNTIME/syntax_ and _$VIMRUNTIME/ftdetect_ directory or to _~/.vim/syntax_ and _~/.vim/ftdetect_ directories:

    # cd ~/
    # git clone https://codeberg.org/mclemens/vim-fle-syntax.git
    # mkdir -p ~/.vim/syntax
    # mkdir -p ~/.vim/ftdetect
    # ln -s ~/vim-fle-syntax/syntax/fle.vim ~/.vim/syntax/fle.vim
    # ln -s ~/vim-fle-syntax/ftdetect/fle.vim ~/.vim/ftdetect/fle.vim
    # vim ~/.vimrc # <<- optional: paste above lines into this file

## Update

    # cd ~/vim-fle-syntax
    # git pull

## Usage

Just open any text file ending with .fle in vim:

    # vim ~/mylog.fle

Press F5 to enter timestamp, press F6 to enter current date string.

## Colors

If you are unhappy with the default colors, please feel free to edit _~/.vim/syntax/fle.vim_ and change the colors in the following code block:

    " mapping of above matches/keywords to colors
    " customize to your liking
    hi def fle_call ctermfg=blue
    hi def fle_date ctermfg=blue
    hi def fle_other ctermfg=blue
    hi def fle_time ctermfg=green
    hi def fle_loc ctermfg=green
    hi def fle_name ctermfg=cyan
    hi def fle_header ctermfg=red
    hi def fle_freq ctermfg=red
    hi def fle_mode ctermfg=red
    hi def fle_band ctermfg=red
    hi def fle_sota ctermfg=yellow
    hi def fle_pota ctermfg=yellow