" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"============== Custom Mappings ===============
" general mapping
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>
noremap H ^
noremap L $
"custom comma motion mapping
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument" 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert"

map <leader>g :GundoToggle<CR>

" delete surrounding characters
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds" F"x,x
noremap cs" F"x,xi
noremap ds' F'x,x
noremap cs' F'x,xi
noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi

nmap cu ct_
nmap cU cf_

" upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

" diff
nmap ]c ]czz
nmap [c [czz

" default to very magic
no / /\v

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nmap gO O<ESC>j

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"open tag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

nmap <silent> <C-D> :NERDTreeToggle<CR>

" open vimrc
nnoremap <leader>v :e  ~/DotFiles/.vim/startup/settings.vim<CR>
nnoremap <leader>V :tabnew ~/DotFiles/.vim/startup/settings.vim<CR>


" reload all open buffers
nnoremap <leader>Ra :tabdo exec "windo e!"

" Use regular replace
nnoremap <leader>s :%s /
vnoremap <leader>s :%s /

" Use :Subvert replace
nnoremap <leader>S :%S /
vnoremap <leader>S :%S /

nmap <leader>f <Plug>(easymotion-f2)
nmap <leader>F <Plug>(easymotion-F2)

nnoremap <leader>a :Ag! 

nnoremap <leader>. :CtrlPTag<cr>

noremap  <leader>b :TagbarToggle<cr>
nnoremap <leader>n :NumberToggle()<cr>

" angularjs syntasic ovveride
 let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
 let g:syntastic_mode_map={ 'mode': 'active',
                      \ 'active_filetypes': [],
                                           \ 'passive_filetypes': ['html'] }
                                           "
