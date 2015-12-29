"Confused? Cursor over word, shift+k
"toggle keys provided thanks to vim-unimpaired

set cursorcolumn "cou

set number "con

set wrap "cow

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

"Search related
set ignorecase
set smartcase
set incsearch
set showmatch

"Highlight search results. :noh to disable
set hlsearch

"backup, undo, and swap directory
set undodir=$vim/tmp/undo//
set backupdir=$vim/backup//
set directory=$vim/swp//
