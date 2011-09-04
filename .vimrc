call pathogen#infect()
call pathogen#helptags()

set background=light
set guifont=Consolas:h13
syntax on
if !has('gui_running') && $TERM_PROGRAM == 'Apple_Terminal'
	let g:solarized_termcolors = &t_Co
	let g:solarized_termtrans = 1
endif
colorscheme solarized
