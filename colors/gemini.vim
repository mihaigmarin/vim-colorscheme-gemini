" Copyright (C) 2025 Gabriel Marin
" Vim color scheme inspired by google gemini code snippets
"
" Name: Gemini
" Author: Gabriel Marin
" Github: https://github.com/mgabrielmarin/vim-colorscheme-gemini

" Clear colors
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "gemini"

" Background & Foreground
let s:black='#1e1e1e'
let s:black_t=234
let s:white='#d4d4d4'
let s:white_t=253
let s:grey='#80868b'
let s:grey_t=245
let s:lgrey='#505B69'
let s:lgrey_t=240
let s:blue='#264f78'
let s:blue_t=24
let s:orange='#fa903e'
let s:orange_t=208
let s:blue='#8ab4f8'
let s:blue_t=111
let s:yellow='#fdd663'
let s:yellow_t=221
let s:green='#81c995'
let s:green_t=115
let s:purple='#c58af9'
let s:purple_t=141
let s:brown='#62341f'
let s:brown_t=95

" Helper function
function s:hi(group, guibg, ctermbg, guifg, ctermfg)
	exec 'hi ' . a:group . ' guibg=' 	. a:guibg
	exec 'hi ' . a:group . ' ctermbg=' 	. a:ctermbg
	exec 'hi ' . a:group . ' guifg=' 	. a:guifg
	exec 'hi ' . a:group . ' ctermfg=' 	. a:ctermfg
endfunction

" Basic
call s:hi('Normal', s:black, s:black_t, s:white, s:white_t)
call s:hi('EndOfBuffer', s:black, s:black_t, s:white, s:white_t)
call s:hi('SignColumn', s:black, s:black_t, s:white, s:white_t)
call s:hi('LineNr', s:black, s:black_t, s:white, s:white_t)
call s:hi('Search', s:brown, s:brown_t, s:white, s:white_t)
call s:hi('CurSearch', s:lgrey, s:lgrey_t, s:white, s:white_t)
call s:hi('Pmenu', s:grey, s:grey_t, s:white, s:white_t)
call s:hi('PmenuSel', s:lgrey, s:lgrey_t, s:white, s:white_t)
call s:hi('StatusLine', s:white, s:white_t, s:lgrey, s:lgrey_t)
call s:hi('Cursor', s:lgrey , s:lgrey_t, s:white, s:white_t)
call s:hi('MatchParen', s:black, s:black_t, s:white, s:white_t)

" Syntax
call s:hi('Comment', s:black, s:black_t, s:grey, s:grey_t)
call s:hi('Constant', s:black, s:black_t, s:orange, s:orange_t)
call s:hi('Statement', s:black, s:black_t, s:purple, s:purple_t)
call s:hi('Preproc', s:black, s:black_t, s:blue, s:blue_t)
call s:hi('Type', s:black, s:black_t, s:purple, s:purple_t)
call s:hi('Identifier', s:black, s:black_t, s:white, s:white_t)
call s:hi('Function', s:black, s:black_t, s:yellow, s:yellow_t)
call s:hi('String', s:black, s:black_t, s:green, s:green_t)
call s:hi('SpecialChar', s:black, s:black_t, s:green, s:green_t)

" Special
call s:hi('Todo', s:black, s:black_t, s:grey, s:grey_t)
" vim:set ft=vim sts=4 sw=4:
