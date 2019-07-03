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
hi gt      ctermfg=Green
hi lt      ctermfg=Green
hi comma   ctermfg=Yellow
hi dot     ctermfg=Yellow

hi comment ctermfg=DarkGray


let b:current_syntax = "brainfuck"
