"============== Custom Commands ===============
command -nargs=0 Sinit :call <SID>Sinit('%:p:h')
command -nargs=? W :w <args>
augroup AutoMkdir
	autocmd!
	autocmd  BufWritePre  *  :call EnsureDirExists()
augroup END

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

augroup FixProportionsOnResize
    au!
      au VimResized * exe "normal! \<c-w>="
    augroup END

