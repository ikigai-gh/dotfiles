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
filetype off
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
" Plugins {{{
call vundle#begin()

Plugin 'gmarik/Vundle.vim'          "A plugin manager
Plugin 'scrooloose/nerdtree'        "A file tree
Plugin 'Valloric/YouCompleteMe'     "An autocomplete engine
Plugin 'puremourning/vimspector'    "A debugging tool

call vundle#end()
"" }}}

" Commands {{{
autocmd FileType Makefile setlocal expandtab=no
"" }}}

let mapleader = ' '
" Shortcuts {{{
nnoremap <leader>t  :NERDTree<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>

"" }}}
