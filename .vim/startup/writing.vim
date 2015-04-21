
 function! MatchTechWordsToAvoid()
   highlight TechWordsToAvoid ctermbg=red ctermfg=white guibg=red guifg=white
   match TechWordsToAvoid /\c\<\(obviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy\)\>/
 endfunction
 autocmd FileType markdown call MatchTechWordsToAvoid()
 autocmd BufWinEnter *.md call MatchTechWordsToAvoid()
 autocmd InsertEnter *.md call MatchTechWordsToAvoid()
 autocmd InsertLeave *.md call MatchTechWordsToAvoid()
 autocmd BufWinLeave *.md call clearmatches()

 function! MatchDebugStatments()
   highlight DebugStatements ctermfg=red guifg=red
   match DebugStatements /\c\<\(console\|debugger\|debug\|logger\)\>/
 endfunction
autocmd BufWinEnter *.js call MatchDebugStatments()
autocmd InsertEnter *.js call MatchDebugStatments()
autocmd InsertLeave *.js call MatchDebugStatments()
autocmd BufWinLeave * call clearmatches()
