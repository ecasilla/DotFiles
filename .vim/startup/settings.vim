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

set softtabstop=2
set expandtab
set tabstop=2
set shiftwidth=2
set foldcolumn=1
set cc=+1,+2

set linespace=0
set list listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2
set ffs=unix
set mouse=a
set vb
set ttym=xterm2

set wrap
set tags=~/.vim/tags/tags

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

let NERDTreeShowHidden=1
let mapleader='\'
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:Powerline_symbols = 'fancy'
"unicode symbols
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'

let g:airline_symbols.whitespace = 'Ξ'
let g:airline_powerline_fonts=1
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1


let g:airline_section_x=""
let g:airline_section_y="%{strlen(&ft)?&ft:'none'}"

set guifont=Inconsolata\ for\ Powerline:h18

set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=screen-256color
set termencoding=utf-8


let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](doc|tmp|node_modules|bower_components)',
  \ 'file': '\v\.(exe|so|dll|DS_Store)$',
  \ }
if executable("ag")
  let g:ackprg = "ag --nogroup --column"
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"session mangement
let g:session_directory="~/.vim/session"
let g:session_autoload="no"
let g:session_autosave= "no"
let g:session_command_aliases= 1

noremap <leader>so :OpenSession
noremap <leader>ss :SaveSession
noremap <leader>sd :DeleteSession<CR>
noremap <leader>sc :CloseSession<CR>

let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1

let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['js'] = 'javascript,javascript-jquery,javascript.node'
let g:snipMate.scope_aliases['html'] = 'javascript,javascript-jquery,javascript.node'


" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set backupskip+=~/tmp/*,/private/tmp/* 
set undodir=~/.backup/undo/,~/tmp,.
set backup
set writebackup
set noswapfile

set undofile
set history=500
set undolevels=100

scriptencoding utf-8

