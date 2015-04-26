" Sessions
autocmd BufWinLeave *.js mkview
autocmd BufWinEnter *.js silent loadview

":au[tocmd][!] [group] {event} {pattern} [nested] {cmd}
":au FileType js nnoremap <buffer> <leader>cc :echo "commend js"<cr>
"<buffer> causes the mapping to apply only to the buffer that passed {pattern}
"put in to .vim/ftplguin/js.vim or vimfiles/ftplugin/js.vim
