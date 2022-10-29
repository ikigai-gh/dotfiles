" Options {{{
set autoindent
set cursorline
set encoding=utf-8
set expandtab
set foldmethod=marker
set history=1000
set hlsearch
set ignorecase
set incsearch
set list listchars=tab:->,trail:_,eol:$
set nobackup
set nocompatible
set noswapfile
set number
set showmode
set shiftwidth=4
set smartcase
set tabstop=4
" }}}

color slate
syntax on
filetype on
filetype plugin on

" Commands {{{
autocmd FileType Makefile setlocal expandtab=no
"" }}}
