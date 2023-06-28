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

syntax on
filetype off
filetype plugin on
set spell
set splitbelow
" Commands {{{
autocmd FileType Makefile setlocal expandtab=no
" autocmd BufWritePost *.go :make
"" }}}

"" Plugin list {{{

call plug#begin(expand('~/.vim/plugged'))
"" Bottom prompt
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" File tree
Plug 'preservim/nerdtree'

"" Monochrome theme
Plug 'huyvohcmc/atlas.vim'

"" Language Server Protocol
Plug 'prabirshrestha/vim-lsp'
"" Default settings for LSP
Plug 'mattn/vim-lsp-settings'

"" Autocompletion for LSP
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

"" Debug server
Plug 'puremourning/vimspector'
"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"" }}}

colorscheme atlas
"" Plugin setup {{{
let g:airline_theme='minimalist'

"" }}}

" Shortcuts {{{
map <F5> :make<CR>
let mapleader = ' '
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :LspReferences<CR>
nnoremap <leader>d :LspDefinition<CR>
nnoremap <leader>/ :LspDocumentSymbol<CR>
"" }}}
