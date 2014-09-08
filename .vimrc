"Requirements{{{
"~/vimfiles/computer.vim that contains the customization for this computer
"Following directories to hold temp files
    "~/.vim/.backup
    "~/.vim/.swp
    "~/.vim/.undo
"Pathogen
"}}}


"ReadME {{{
" Put cursor under a word and press K to bring up help for it
    " if it doesn't work :setlocal keywordprg=:help
"
" :verbose map <C-d>   will show the command mapped to that key
"

"http://vimdoc.sourceforge.net/htmldoc/help.html
"normal - non recursive -map = nnoremap
"}}}

"Useful Key Bindings {{{
"Lower Case Alphabets {{{
"folding {{{
" zm    fold all
" zo    open current
" zc    close current
"}}}
"}}}
"Capital Alphabets{{{

" K     Show help (execute keywordprg)

"}}}

":map will show all custom key bindings
":help key will show build in key bindings

"Show History{{{
"ex commands    -> q:
"search         -> q/
"}}}

"Used First Order Leader Keys {{{
"usually followed by a second key
"e  -> edit
"s  -> source
"/  -> disable search highlight
"t  -> tab control
"b  -> buffer control
"}}}
"}}}

execute pathogen#infect()

let mapleader = ";"
let maplocalleader = "\\"
noremap , :
noremap : <nop>
inoremap jk <ESC>l
set showcmd

"Vim Basic {{{
"comment based file control. see bottom
set nocompatible
behave mswin
set modelines=1
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
"load file automatically if its been changed from outside
set autoread
syntax on
"Color
set t_Co=256
set background=dark
colorscheme molokai
"Tab Settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"set list and set nolist to toggle
set list
set listchars=nbsp:¬,tab:»·,trail:·   

"set guifont=Consolas:h14:cANSI
"}}}

"Quick File Edit Commands {{{
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"}}}
"convenient shortcuts{{{
noremap <C-s> <ESC>:w<CR>
"}}}
"Movement changes {{{
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0
"}}}

"Searching  {{{
nnoremap <silent> <leader>/ :noh<cr>

"Search related
set ignorecase
set smartcase
set incsearch
set showmatch

"Highlight search results. :noh to disable
set hlsearch
"}}}
"Window Management {{{
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
"}}}
"Buffers {{{
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bb :CtrlPBuffer<cr>
"}}}
"tabs {{{
nnoremap <leader>tj :tabNext<cr>
nnoremap <leader>tk :tabprevious<cr>
nnoremap <leader>td :tabclose<cr>
"}}}

"vim-airline {{{
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme             = 'powerlineish'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"}}}

" Easy Motion Mappings {{{
let g:EasyMotion_do_mapping = 1
"nerdTree + following combo works good
    "<leader><leader> and
    "t  -> forward for char
    "T  -> backward for chart
        "s  -> search based on one char
        "w  -> search for based on the first line


nmap s <plug>(easymotion-s2)
let g:EasyMotion_smartcase  = 1

nmap <leader>j <plug>(easymotion-j)
nmap <leader>k <plug>(easymotion-k)
nmap f <plug>(easymotion-f)
nmap F <plug>(easymotion-F)
"}}}

" vim-javascript {{{
let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1
let g:javascript_conceal = 1

"}}}

" NERDTRee {{{
nnoremap <C-d> :NERDTreeToggle<cr>
"}}}

"Ctrl-P {{{
"<c-p> is mapped to :CtrlP
"nnoremap <C-,> :CtrlPMRUFiles<cr>
"}}}


" Save folds and what have you
autocmd BufWinLeave *.js mkview
autocmd BufWinEnter *.js silent loadview

"backup, undo, and swap directory {{{
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
"}}}

"Commented Out - Seems Promissing {{{
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"}}}

"POTENTIAL FUTURE COMMANDS {{{
":au[tocmd][!] [group] {event} {pattern} [nested] {cmd}
":au FileType js nnoremap <buffer> <leader>cc :echo "commend js"<cr>
"<buffer> causes the mapping to apply only to the buffer that passed {pattern}
"put in to .vim/ftplguin/js.vim or vimfiles/ftplugin/js.vim

"}}}

"Help: Variables and  {{{
"let variable=value
"set option=value
"echo variable
"echo &option
    "use case, you want to put the current font settings in to buffer
    ":put =&guifont
"}}}

"Chane any previously set settings based on the computer
:source ~/.vim/computer.vim
" vim:foldmethod=marker:foldlevel=0
