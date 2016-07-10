"============== General Settings ===============
set dict=/usr/share/dict/words
set cursorline
set clipboard=unnamed
set showcmd
set ruler
set incsearch
set wildmenu
set hidden
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

set softtabstop=4
set expandtab
set tabstop=4
set shiftwidth=2
set foldcolumn=1
set cc=+1,+2
" Highlight search results
set hlsearch
set lazyredraw

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
 
let g:Powerline_symbols='fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bufExplorer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste_symbol = 'ρ'
let g:airline_symbols.paste_symbol = 'Þ'
let g:airline_symbols.paste_symbol = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#quickfix#quickfix_text = 'Qfix'
let g:airline_mode_map = {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'REPLACE',
        \ 'v' : 'VISUAL',
        \ 'V' : 'V-LINE',
        \ 'c' : 'CMD   ',
        \ '': 'V-BLCK',
        \ }

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_y="%{strlen(&ft)?&ft:'none'}"
let g:cpp_experimental_template_highlight = 1
let g:cpp_class_scope_highlight = 1
set guifont=Inconsolata\ for\ Powerline:h18
let g:go_fmt_command = "goimports"
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=screen-256color
set termencoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](doc|tmp|node_modules|bower_components|git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|DS_Store||class|png|jpg|jpeg)$',
  \ }
if executable("ag")
  let g:ackprg = "ag --nogroup --column"
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:CtrlSpaceGlobCommand = 'ag $s -l --nocolor -g ""'
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

let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'sh','html']
let g:pasta_disabled_filetypes = ['python', 'coffee', 'yaml','mardown']
let g:go_fmt_command = "goimports"

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

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L



let g:elm_jump_to_error = 1
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
