" Vim Fast Log Entry syntax file
" Language: Fast Log Entry 
" Maintainer: Michael Clemens
" Latest Revision: 2022/10/28

if exists("b:current_syntax")
  finish
endif

syn match fle_date /^\s*date \d\{4}-\d\{2}-\d\{2}/
syn match fle_time /\(^\s*\)\@<=\(\d\{4}\|\d\{1,2}\)\($\|\s\)/
syn match fle_freq /\d\{1,3}\.\d\{3}/
syn match fle_call /\(\S*\/\)\{-\}[a-zA-Z0-9]\{1,3}[0-9][a-zA-Z0-9]\{0,3}[a-zA-Z]/
syn match fle_loc /#\(\S\+\)/
syn match fle_name /@\(\S\+\)/

syn keyword fle_mode ssb cw fm am SSB CW FM AM
syn keyword fle_mode ft8 ft4 js8 rtty psk31 FT8 FT4 JS8 RTTY PSK31
syn keyword fle_mode digitalvoice DIGITALVOICE
syn keyword fle_header mycall mygrid operator qslmsg
syn keyword fle_header mywwff mysota mypota nickname
syn keyword fle_band 23cm 70cm 2m 4m 6m
syn keyword fle_band 10m 12m 15m 17m 20m 30m 40m
syn keyword fle_band 60m 75m 80m 160m
syn keyword fle_other day 

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

let b:current_syntax = "fle"
