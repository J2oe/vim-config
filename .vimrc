set encoding=utf-8
set cursorline

set number
set ruler
syntax on
filetype on
filetype plugin on
filetype plugin indent on

set formatoptions=tcrqn
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab

set showmatch
set matchtime=5
set hlsearch
set incsearch
"Case sensitive searches
set ignorecase

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set foldmethond=indent
set foldenable

" :help fold
" zM to fold everything
" zR to unfold everything
" za to toggle the current fold
" zA to recursively toggle the current fold

" jump to the last positio when reopening a file
if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
