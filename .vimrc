"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible							" be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Utilities
Plug 'kien/ctrlp.vim'																		" fuzzy find files
Plug 'morhetz/gruvbox'																	"	color scheme
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }	" file drawer
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Linting
Plug 'w0rp/ale'
Plug 'posva/vim-vue'

" Productivity
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'

" Ctags
Plug 'majutsushi/tagbar'

" Syntax
Plug 'mustache/vim-mustache-handlebars'

" All of your Plugins must be added before the following line
call plug#end()

" encoding
set encoding=utf-8

" colorscheme
syntax on
set background=dark
colorscheme gruvbox

" set a map leader for more key combos
let mapleader = ','

" Tab Control
set noexpandtab					" tabs ftw
set smarttab						" tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2						" the visible width of tabs
set softtabstop=2				" edit as if the tabs are 4 characters wide
set shiftwidth=2				" number of spaces to use for indent and unindent
set shiftround					" round indent to a multiple of 'shiftwidth'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number

set autoindent					" automatically set indet of new line
set smartindent

set laststatus=2				" show the status line all the time
set ignorecase					"	ignore case-sensitivity in search

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

map <leader>wc :wincmd q<cr>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

" helpers for dealing with other people's code
nmap \t :set ts=2 sts=2 sw=2 noet<cr>
nmap \s :set ts=2 sts=2 sw=2 et<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree
noremap <leader>t :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeIgnore=['.git$[[dir]]', '.swp', '.DS_Store']

" Ale
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
