call pathogen#infect()
call pathogen#helptags()

if has("gui_gtk2")
	set guifont=Inconsolata\ Medium\ 13
else
	set guifont=Consolas:h13
endif

filetype on
filetype plugin on
filetype indent on
set cscopetag
set visualbell
set autoindent
set incsearch
set smartcase
set ignorecase
set number
set showmatch
set ruler
set backspace=eol,start,indent
set nowrap
set modeline
set sw=4
set ts=4
set smarttab
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<

function! Prose()
	set spell
	set expandtab
	set nocindent
	iab teh the
	iab Teh The
	iab THe The
endfunction

au FileType c set cindent
au FileType gitcommit,text,svn,mail,xml call Prose()
au FileType html,xml,xsl source ~/.vim/scripts/closetag.vim 

syntax on
if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized
