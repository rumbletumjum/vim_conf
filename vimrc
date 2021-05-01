set nocompatible
call plug#begin('~/.vim/plugged')
"{{{
Plug 'andreypopp/vim-colors-plain'
Plug 'arcticicestudio/nord-vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'dylanaraps/wal.vim'
Plug 'franbach/miramare'
Plug 'gruvbox-community/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'jsit/toast.vim'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
Plug 'nanotech/jellybeans.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'rigellute/rigel'
Plug 'robertmeta/nofrils'
Plug 'romainl/apprentice'
Plug 'romainl/flattened'
Plug 'w0ng/vim-hybrid'
Plug 'yorickpeterse/happy_hacking.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'jceb/vim-orgmode'
Plug 'junegunn/goyo.vim'
Plug 'lifepillar/vim-colortemplate'
Plug 'ledger/vim-ledger'
Plug 'vimwiki/vimwiki'
"}}}
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

set background=dark
set t_Co=256
if (has("termguicolors"))
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif

colorscheme jellybeans

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

au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" vim: ts=2:sts=2:sw=2:et:fdm=marker
