set nocompatible
call plug#begin('~/.vim/plugged')

"{{{1
" themes
"Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'alessandroyorba/alduin'
Plug 'alessandroyorba/arcadia'
Plug 'alessandroyorba/sierra'
Plug 'andreypopp/vim-colors-plain'
Plug 'ap/vim-css-color'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'dylanaraps/wal.vim'
Plug 'franbach/miramare'
Plug 'gruvbox-community/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'jceb/vim-orgmode'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'joshdick/onedark.vim'
Plug 'jsit/toast.vim'
Plug 'junegunn/goyo.vim'
Plug 'kkga/vim-envy'
Plug 'leafgarland/typescript-vim'
Plug 'ledger/vim-ledger'
Plug 'lifepillar/vim-colortemplate'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nanotech/jellybeans.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'pangloss/vim-javascript'
Plug 'rigellute/rigel'
Plug 'robertmeta/nofrils'
Plug 'romainl/apprentice'
Plug 'romainl/flattened'
Plug 'sainnhe/edge'
Plug 'sainnhe/forest-night'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'w0ng/vim-hybrid'
Plug 'yorickpeterse/happy_hacking.vim'
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

set background=dark
set t_Co=256
if (has("termguicolors"))
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif

colorscheme envy

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

"hi ColorColumn ctermbg=0 guibg=

au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" vim: ts=2:sts=2:sw=2:et:fdm=marker
