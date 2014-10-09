"Requirements{{{
"~/vimfiles/computer.vim that contains the customization for this computer
"Following directories to hold temp files
    "~/.vim/.backup
    "~/.vim/.swp
    "~/.vim/.undo
"Pathogen
"}}}

set guioptions-=T
set guioptions-=m
"set guifont=Consolas:h14:cANSI

"Would the javascript plugin work with this?
filetype plugin on

"ReadME {{{1
" Put cursor under a word and press K to bring up help for it
    " if it doesn't work :setlocal keywordprg=:help
"
" :verbose map <C-d>   will show the command mapped to that key
"

"http://vimdoc.sourceforge.net/htmldoc/help.html
"normal - non recursive -map = nnoremap
"
"text-object{{{2
"vit => visual in tag
"vat => visual around tag

"Useful Key Bindings {{{1
"Lower Case Alphabets {{{2
"folding {{{3
" zm    fold all
" zo    open current
" zc    close current
"Capital Alphabets{{{3

" K     Show help (execute keywordprg)


":map will show all custom key bindings
":help key will show build in key bindings

"Show History{{{1
"ex commands    -> q:
"search         -> q/

"Used First Order Leader Keys {{{1
"usually followed by a second key
"e  -> edit
"s  -> source
"/  -> disable search highlight
"t  -> tab control


"Pathogen - leader{{{1
execute pathogen#infect()
":Helptags   to rebuild documentation

let mapleader = ";"
let maplocalleader = "\\"
noremap , :
noremap : <nop>
inoremap jk <ESC>l
set showcmd

"Vim Basic {{{1
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
set listchars=nbsp:¬,tab:»·,trail:·,extends:>


"Quick File Edit Commands {{{1
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"convenient shortcuts{{{1
noremap <C-s> <ESC>:w<CR>

"Movement changes {{{1
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

"Searching  {{{1
nnoremap <silent> <leader>/ :noh<cr>

"Search related{{{2
set ignorecase
set smartcase
set incsearch
set showmatch

"Highlight search results. :noh to disable
set hlsearch

"Window Management {{{1
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

"tabs {{{1
nnoremap <leader>tj :tabNext<cr>
nnoremap <leader>tk :tabprevious<cr>
nnoremap <leader>td :tabclose<cr>

" tabular {{{1
":Tab css_ruleset
"css property has three fields  rule : value
augroup cssindent
 au BufRead *.less,*.css AddTabularPattern align /:/l0c1l0
augroup END

" vim-unimpaired {{{1
" ]ou to turn it off
set cursorcolumn "show crosshair on cursor
"]on to disable
set number      "show current line number in gutter

" vim-surround {{{1
"ysit [press char to surround]

"emmet-vim {{{1

"zeal-vim {{{1
"

"vim-airline {{{1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme             = 'powerlineish'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"vim-easymotion {{{1
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

" vim-javascript {{{1
let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1
let g:javascript_conceal = 1


" NERDTRee {{{1
nnoremap <C-d> :NERDTreeToggle<cr>
"most of the time work is done in less files
let NERDTreeIgnore = ['\.css$']

"Ctrl-P {{{1
"<c-p> is mapped to :CtrlP
let g:ctrlp_cmd= 'CtrlPBuffer'


" Save folds and what have you{{{1
autocmd BufWinLeave *.js mkview
autocmd BufWinEnter *.js silent loadview

"backup, undo, and swap directory {{{1
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

"Commented Out - Seems Promissing {{{1
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

"POTENTIAL FUTURE COMMANDS {{{1
":au[tocmd][!] [group] {event} {pattern} [nested] {cmd}
":au FileType js nnoremap <buffer> <leader>cc :echo "commend js"<cr>
"<buffer> causes the mapping to apply only to the buffer that passed {pattern}
"put in to .vim/ftplguin/js.vim or vimfiles/ftplugin/js.vim


"Help: Variables and  {{{1
"let variable=value
"set option=value
"echo variable
"echo &option
    "use case, you want to put the current font settings in to buffer
    ":put =&guifont

"Change any previously set settings based on the computer{{{1
:source H:\vimfiles\computer.vim
" vim:foldmethod=marker:foldlevel=0
