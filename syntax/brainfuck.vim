" Vim syntax file
" Language:     Brainfuck
" Author:   Kimiyuki Onaka <kimiyuki95@gmail.com>
" Last Change:  May 04,2016
"
" Version:      1.0
" Url:          http://...
"

if version < 600
    syn clear
elseif exists("b:current_syntax")
    finish
endif

syn match plus   "+"
syn match minus  "-"
syn match lt     "<"
syn match gt     ">"
syn match comma  ","
syn match dot    "\."
syn match open   "["
syn match close  "]"

syn match comment "[^-+<>[\].,]"

hi plus    ctermfg=DarkRed
hi minus   ctermfg=DarkBlue
hi gt      ctermfg=Brown
hi lt      ctermfg=Brown
hi comma   ctermfg=DarkGreen
hi dot     ctermfg=DarkGreen
hi open    ctermfg=DarkMagenta
hi close   ctermfg=DarkMagenta

hi comment ctermfg=DarkGray


let b:current_syntax = "brainfuck"
