set number
set wildmenu
set showmatch
set showcmd

set encoding=utf-8

set hlsearch
set incsearch
set smartcase

set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

set noswapfile
set nobackup
set hidden
set nowritebackup

set splitright
set splitbelow

set conceallevel=2
set laststatus=2
" set background=dark
" set undofile=true

set scrolloff=8
set breakindent

set nowrap
set path+=**

let g:netrw_keepdir = 0
let g:netrw_winsize = 20
let g:netrw_banner = 0
hi! link netrwMarkFile Search

nnoremap <C-b> :Lexplore<CR>

set clipboard+=unnamed,unnamedplus
set paste

set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

inoremap <expr> <TAB> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <S-TAB> pumvisible() ? "<C-p>" : "<Up>"

inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

let mapleader = " "

nnoremap Z R<CR><Esc>

inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap < <gv
vnoremap > >gv

nnoremap < <<
nnoremap > >>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>

nnoremap <leader><leader> <C-^>
" nnoremap <Esc> :noh<CR>

nnoremap <S-h> ^
nnoremap <S-l> $

nnoremap <leader>f :e **/
nnoremap <leader>b :b <C-d>

syntax on
filetype plugin indent on
runtime macros/matchit.vim
