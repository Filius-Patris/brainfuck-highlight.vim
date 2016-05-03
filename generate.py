#!/usr/bin/env python3

print('''\
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
syn match dot    "\\."

syn match comment "[^-+<>[\\].,]"

syn match zero  "\\[[+-]\\]"

''', end='')
for i in range(1,16):
    for x, y in ['<>', '><']:
        s = [''] + [x] * i + [y] * i + ['']
        s = '\\%([^[\\]<>]\\|\\[[+-]\\]\\)*'.join(s)
        print('syn match balanced "{}" contains=ALLBUT,lt,gt'.format(s))
print('''\

hi plus    ctermfg=DarkRed
hi minus   ctermfg=DarkBlue
hi gt      ctermfg=Green
hi lt      ctermfg=Green
hi comma   ctermfg=Yellow
hi dot     ctermfg=Yellow

hi comment ctermfg=DarkGray

hi zero      ctermfg=Magenta
hi balanced  ctermfg=Cyan


let b:current_syntax = "brainfuck"
''', end='')
