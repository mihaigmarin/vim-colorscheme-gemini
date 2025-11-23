" Copyright (C) 2025 Gabriel Marin
" Vim color scheme inspired by google gemini code snippets
"
" Name: Gemini
" Author: Gabriel Marin
" Github: https://github.com/gabmarin/vim-colorscheme-gemini

" Clear colors
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

" Color scheme name
let g:colors_name = "gemini"

" Colors definition
let s:black='#1e1e1e'
let s:black_t=234
let s:white='#d4d4d4'
let s:white_t=253
let s:grey='#80868b'
let s:grey_t=245
let s:dgrey='#505B69'
let s:dgrey_t=240
let s:lblue='#8ab4f8'
let s:lblue_t=111
let s:blue='#264f78'
let s:blue_t=24
let s:orange='#fa903e'
let s:orange_t=208
let s:dorange='#ff9632'
let s:dorange_t=214
let s:yellow='#fdd663'
let s:yellow_t=221
let s:green='#81c995'
let s:green_t=115
let s:purple='#c58af9'
let s:purple_t=141
let s:brown='#62341f'
let s:brown_t=95

" Helper function
function s:hi(group, guibg, ctermbg, guifg, ctermfg, gui, term)
	let l:cmd = 'hi ' . a:group
	if !empty(a:guibg)
		let l:cmd .= ' guibg=' . a:guibg
	endif
	if !empty(a:ctermbg)
		let l:cmd .= ' ctermbg=' . a:ctermbg
	endif
	if !empty(a:guifg)
		let l:cmd .= ' guifg=' . a:guifg
	endif
	if !empty(a:ctermfg)
		let l:cmd .= ' ctermfg=' . a:ctermfg
	endif
	if !empty(a:gui)
		let l:cmd .= ' gui=' . a:gui
	endif
	if !empty(a:term)
		let l:cmd .= ' term=' . a:term
	endif
	execute l:cmd
endfunction

" Basic
call s:hi('Normal', s:black, s:black_t, s:white, s:white_t, '', '')
call s:hi('EndOfBuffer', s:black, s:black_t, s:white, s:white_t, '', '')
call s:hi('SignColumn', s:black, s:black_t, s:white, s:white_t, '', '')
call s:hi('LineNr', s:black, s:black_t, s:white, s:white_t, '', '')
call s:hi('Search', s:yellow, s:yellow_t, s:black, s:black_t, '', '')
call s:hi('CurSearch', s:dorange, s:dorange_t, s:black, s:black_t, '', '')
call s:hi('IncSearch', s:black, s:black_t, s:dorange, s:dorange_t, '', '')
call s:hi('Pmenu', s:grey, s:grey_t, s:white, s:white_t, '', '')
call s:hi('Pmenu', s:grey, s:grey_t, s:white, s:white_t, '', '')
call s:hi('PmenuSel', s:dgrey, s:dgrey_t, s:white, s:white_t, '', '')
call s:hi('StatusLine', s:white, s:white_t, s:dgrey, s:dgrey_t, '', '')
call s:hi('StatusLineNc', s:white, s:white_t, s:dgrey, s:dgrey_t, '', '')
call s:hi('Cursor', s:dgrey , s:dgrey_t, s:white, s:white_t, '', '')
call s:hi('MatchParen', s:black, s:black_t, s:white, s:white_t, '', '')
call s:hi('WildMenu', s:dorange, s:dorange_t, s:black, s:black_t, '', '')
call s:hi('Visual', s:blue, s:blue_t, 'NONE', 'NONE', '', '')

" Syntax
call s:hi('Comment', '', '', s:grey, s:grey_t, '', '')
call s:hi('Constant', '', '', s:orange, s:orange_t, '', '')
call s:hi('Statement', '', '', s:purple, s:purple_t, '', '')
call s:hi('Preproc', '', '', s:lblue, s:lblue_t, '', '')
call s:hi('Type', '', '', s:purple, s:purple_t, '', '')
call s:hi('Identifier', '', '', s:lblue, s:lblue_t, '', '')
call s:hi('Function', '', '', s:yellow, s:yellow_t, '', '')
call s:hi('String', '', '', s:green, s:green_t, '', '')
call s:hi('SpecialChar', '', '', s:green, s:green_t, '', '')

" Special
call s:hi('Todo', s:black, s:black_t, s:grey, s:grey_t, '', '')
" vim:set ft=vim sts=4 sw=4:
