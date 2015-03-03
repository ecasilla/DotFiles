"Pathogen
call pathogen#runtime_append_all_bundles()


"============== Custom scripts ===============
source ~/.vim/after/syntaxcheck.vim
source ~/.vim/filetype.vim


"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/gvimrc.vim
source ~/.vim/startup/Abbreviations.vim

" Syntax-specific settings
source ~/.vim/startup/js.vim
source ~/.vim/startup/vim.vim
source ~/.vim/startup/yaml.vim
source ~/.vim/startup/writing.vim
source ~/.vim/startup/go.vim

if &diff
	color molokai
endif
