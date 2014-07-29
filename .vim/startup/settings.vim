"============== General Settings ===============
set dict=/usr/share/dict/words
set cursorline
set showcmd
set ruler
set incsearch
set wildmenu
syntax enable
set synmaxcol=0
set term=screen-256color
set display=uhex
set shortmess=aAIsT
set cmdheight=2
set nowrap
if &diff
	set wrap
endif
let &scrolloff=999-&scrolloff
set smartcase

set completeopt=menu
set mousemodel=popup
set backspace=2
set number
set nocompatible

set enc=utf-8
set fillchars=vert:¦

set expandtab
set tabstop=2
set shiftwidth=2
set foldcolumn=1
set cc=+1,+2

set linespace=0
set history=1000
set list listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2
set ffs=unix
set mouse=a
set vb
set ttym=xterm2

set wrap
set tags=~/.vim/tags/tags

set backupskip=/tmp/*,/private/tmp

" Save when losing focus
 au FocusLost * :silent! wall

" Resize splits when the window is resized
 au VimResized * :wincmd =

 set wildignore+=.hg,.git,.svn                    " Version control
 set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
 set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
 set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
 set wildignore+=*.spl                            " compiled spelling word lists
 set wildignore+=*.sw?                            " Vim swap files
 set wildignore+=*.DS_Store                       " OSX bullshit

 set wildignore+=*.luac                           " Lua byte code

 set wildignore+=migrations                       " Django migrations
 set wildignore+=*.pyc                            " Python byte code

 set wildignore+=*.orig                           " Merge resolution files


if version > 720
	set undofile
	set undodir=~/vimundo/
endif


let mapleader='\'
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
let g:airline_powerline_fonts=1
let g:airline_theme='hybrid'
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_x=""
"let g:airline_section_y="%{strlen(&ft)?&ft:'none'}"'

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
