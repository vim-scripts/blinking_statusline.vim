" Flashes the status line of the focused window whenever you change window.

if exists("g:blinking_statusline") && g:blinking_statusline>0
	" Make StatusLine light up temporarily when we switch window
	augroup BlinkingStatusLine
		autocmd!
		hi StatusLineLit   ctermfg=yellow ctermbg=darkblue cterm=reverse,bold gui=none guibg=yellow guifg=blue
		hi StatusLineUnlit ctermfg=white  ctermbg=blue     cterm=reverse,bold gui=none guibg=white  guifg=blue
		autocmd WinEnter   * hi clear StatusLine | hi link StatusLine StatusLineLit
		autocmd BufEnter   * hi clear StatusLine | hi link StatusLine StatusLineLit
		autocmd CursorHold * hi clear StatusLine | hi link StatusLine StatusLineUnlit
	augroup END
	set updatetime=600
endif

