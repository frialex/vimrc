"Requirements{{{
"0) in .vimrc: source $VIM\vim-custom\.vimrc

"1) Following directories to hold temp files
    "~/.vim/.backup
    "~/.vim/.swp
    "~/.vim/.undo

"2) Pathogen

"}}}

filetype plugin on

set guioptions-=T
set guioptions-=m

execute pathogen#infect()
":Helptags   to rebuild documentation

source $VIM\vimrc\font.vim
source $VIM\vimrc\options.vim
source $VIM\vimrc\change-defaults.vim
source $VIM\vimrc\vim-airline.vim
source $VIM\vimrc\vim-easymotion.vim
source $VIM\vimrc\vim-tabular.vim
source $VIM\vimrc\autocommands.vim

nnoremap <leader>ev :e $VIM\vimrc\.vimrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"convenient shortcuts
noremap <C-s> <ESC>:w<CR>
nnoremap <silent> <leader>/ :noh<cr>

"Movement changes
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

"Window Management
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

"tabs
nnoremap <leader>tj :tabNext<cr>
nnoremap <leader>tk :tabprevious<cr>
nnoremap <leader>td :tabclose<cr>

"emmet-vim

"zeal-vim

" vim-javascript
let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1
let g:javascript_conceal = 1

"Seems Promissing
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

" vim:foldmethod=marker:foldlevel=0
