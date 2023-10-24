" Vim Fast Log Entry syntax file
" Language: Fast Log Entry 
" Maintainer: Michael Clemens
" Latest Revision: 2023/10/24

if exists("b:current_syntax")
  finish
endif

" makes all matches/keywords case insensitive
syntax case ignore

" matches on a date string with a preceeding "date". Example: "date 2022-10-31"
syn match fle_date /^\s*date \d\{4}-\d\{2}-\d\{2}/
" matches on a 2 (MM) or 4 (HHMM) digit time string. Example: "1403" or "03"
syn match fle_time /\(^\s*\)\@<=\(\d\{4}\|\d\{1,2}\)\($\|\s\)/
" matches on a frequency. Must include a ".". Example: 7.123
syn match fle_freq /\d\{1,3}\.\d\{3}/
" matches on call signs including prefixes and suffixes. Example: F/DK1MI/P
syn match fle_call /\(\S*\/\)*[a-zA-Z0-9]\{1,3}[0-9][a-zA-Z0-9]\{0,3}[a-zA-Z]\(\/\S*\)*/
" matches on words beginning with "#". Used for locators. Example: #JN49
syn match fle_loc /#\(\S\+\)/
" matches on words beginning with "@". Used for operator names. Example: @Mike
syn match fle_name /@\(\S\+\)/
" matches on SOTA references. Example: w6/ct-226
syn match fle_sota /\<[a-zA-Z0-9]\{2,3}\/[a-zA-Z0-9]\{2}-[0-9]\{3}\>/
" matches on POTA references. Example: DA-1234
syn match fle_pota /\<[a-zA-Z0-9]\{1,3}-[0-9]\{4}\>/

" all supported operating modes
syn keyword fle_mode CW SSB AM FM RTTY FT8 PSK JT65 JT9 FT4 JS8
syn keyword fle_mode ARDOP ATV C4FM CHIP CLO CONTESTI DIGITALVOICE DOMINO DSTAR
syn keyword fle_mode FAX FSK441 HELL ISCAT JT4 JT6M JT44 MFSK MSK144
syn keyword fle_mode MT63 OLIVIA OPERA PAC PAX PKT PSK2K Q15 QRA64
syn keyword fle_mode ROS RTTYM SSTV T10 THOR THRB TOR V4 VOI
syn keyword fle_mode WINMOR WSPR 							

" header keywords for the resulting ADIF file header
syn keyword fle_header mycall mygrid operator qslmsg
syn keyword fle_header mywwff mysota mypota nickname

" all supportted bands
syn keyword fle_band 2190m 630m 560m 160m 80m 60m 40m 30m
syn keyword fle_band 20m 17m 15m 12m 10m 6m 4m 2m 1.25m
syn keyword fle_band 70cm 33cm 23cm 13cm 9cm 6cm 3cm 1.25cm
syn keyword fle_band 6mm 4mm 2.5mm 2mm 1mm

" other words that need to be highlighted
syn keyword fle_other day

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

let b:current_syntax = "fle"
