syntax on
colorscheme elflord
hi TabLine ctermfg=Black ctermbg=White

set cindent

" get rid of autocomments
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o

set scrolloff=10

set nocompatible
set modelines=0
set undofile

set number
set relativenumber

set wildmenu
set wildmode=longest,full

set cursorline

set ttyfast

set laststatus=2

set path=$PWD/**

let mapleader = ","

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <expr> j v:count == 0 ? 'gj' : "\<Esc>".v:count.'j'
nnoremap <expr> k v:count == 0 ? 'gk' : "\<Esc>".v:count.'k'

" search settings
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" general remaps
nnoremap ; :
inoremap jj <ESC>
nnoremap <tab> %
vnoremap <tab> %

"leaders
nnoremap <leader>c :tabe %:r.cpp<cr>
nnoremap <leader>tc :tabe %:r.cpp<cr>
nnoremap <leader>h :tabe %:r.h<cr>
nnoremap <leader>th :tabe %:r.h<cr>
nnoremap <leader>d :tabe <C-r>=expand('%:h')<cr>/
nnoremap <leader>td :tabe <C-r>=expand('%:h')<cr>/
nnoremap <leader>f :tabe <C-r>=expand('%')<cr>
nnoremap <leader>tf :tabe <C-r>=expand('%')<cr>
nnoremap <leader>i :tabe %:r_inline.h<cr>
nnoremap <leader>pi :tabe %:s?_inline??<cr>

nnoremap <leader>tt :tabe<Space>

nnoremap <leader>ec :e %:r.cpp<cr>
nnoremap <leader>eh :e %:r.h<cr>
nnoremap <leader>ed :e <C-r>=expand('%:h')<cr>/
nnoremap <leader>ef :e <C-r>=expand('%')<cr>

nnoremap <leader>n :set relativenumber!<cr>

nnoremap <leader>g <c-w>gf
nnoremap <leader>eg gf

nnoremap <leader>ex :Explore **/
nnoremap <leader>y :Pexplore<cr>
nnoremap <leader>b :Nexplore<cr>

" select last pasted section
nnoremap <leader>v V`]

