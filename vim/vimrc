set nocompatible
call plug#begin('~/.vim/plugged')

"{{{1
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'

Plug 'gruvbox-community/gruvbox'

Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'

Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
"}}}1

call plug#end()

noremap <Space> <Nop>
let mapleader = "\<space>"
"nnoremap <space> :
"nnoremap <leader>w :w<cr>
"nnoremap <leader>q :q<cr>
"nnoremap <leader>ff :e<cr>
"nnoremap <leader>ws :sp<cr>
"nnoremap <leader>wv :vs<cr>
"nnoremap <leader>wd :q<cr>
"nnoremap <leader>qq :qa<cr>

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[1 q"

" set t_Co=256
" if (has("termguicolors"))
"   set t_8f=[38;2;%lu;%lu;%lum
"   set t_8b=[48;2;%lu;%lu;%lum
"   set termguicolors
" endif

set background=dark
colorscheme ron

set noshowmode
set laststatus=2
set number
set relativenumber
set colorcolumn=80
set cursorline

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set ignorecase

set splitbelow splitright

"hi ColorColumn ctermbg=0 guibg=

au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

autocmd BufWritePost .vimrc,.gvimrc source %
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" vim: ts=2:sts=2:sw=2:et:fdm=marker
