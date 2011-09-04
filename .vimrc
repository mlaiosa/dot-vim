call pathogen#infect()
call pathogen#helptags()

set background=light
set guifont=Consolas:h13

filetype on
filetype plugin on
filetype indent on
set cscopetag
set visualbell
set autoindent
set incsearch
set smartcase
set number
set showmatch
set ruler
set backspace=eol,start,indent
set nowrap
set modeline
set sw=4
set ts=4
set smarttab

function! Prose()
	set spell
	set expandtab
	set nocindent
	iab teh the
	iab Teh The
	iab THe The
endfunction

au FileType c set cindent
au FileType text,svn,mail,xml call Prose()
au FileType html,xml,xsl source ~/.vim/scripts/closetag.vim 

syntax on
" This mess makes solarized work better in Terminal.app
if !has('gui_running') && $TERM_PROGRAM == 'Apple_Terminal'
	let g:solarized_termcolors = &t_Co
	let g:solarized_termtrans = 1
endif
colorscheme solarized
