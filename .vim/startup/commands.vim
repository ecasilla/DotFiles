"============== Custom Commands =============== {{{
command -nargs=0 Sinit :call <SID>Sinit('%:p:h')
command -nargs=? W :w <args>

command! -complete=file -nargs=* Git call s:RunShellCommand('git '.<q-args>)
command! -complete=file -nargs=* Npm call s:RunShellCommand('npm '.<q-args>)
command! -complete=file -nargs=* Gulp call s:RunShellCommand('gulp '.<q-args>)

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

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

au FocusLost * :set number
au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
"}}}
