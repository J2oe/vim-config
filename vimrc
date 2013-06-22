set encoding=utf-8
set cursorline

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'fisadev/vim-ctrlp-cmdpalette'
Bundle 'mattn/zencoding-vim'
Bundle 'kien/tabman.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'fisadev/FixedTaskList.vim'
Bundle 'tpope/vim-surround'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'airblade/vim-gitgutter'
Bundle 'klen/python-mode'
Bundle 'nvie/vim-flake8'
Bundle 'AutoComplPop'
Bundle 'IndexedSearch'
Bundle 'matchit.zip'
Bundlde 'YankRing.vim'
filetype plugin indent on

set number
syntax on

set formatoptions=tcrqn
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab

autocmd Filetype html setlocal shiftwidth=2 tabstop=2
autocmd Filetype htmldjango setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal shiftwidth=2 tabstop=2

set ls=2

set showmatch
set matchtime=5
set hlsearch
set incsearch
"Case sensitive searches
" set ignorecase

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set foldmethod=indent
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

set scrolloff=3
set wildmode=list:longest
