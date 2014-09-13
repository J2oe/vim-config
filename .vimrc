set encoding=utf-8
set cursorline

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/vundle'

Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'mattn/emmet-vim'
Plugin 'kien/tabman.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'fisadev/FixedTaskList.vim'
Plugin 'tpope/vim-surround'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'klen/python-mode'
Plugin 'nvie/vim-flake8'
Plugin 'AutoComplPop'
Plugin 'IndexedSearch'
Plugin 'matchit.zip'
call vundle#end()
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
set ignorecase

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
