set nocompatible
call plug#begin('~/.vim/plugged')

"{{{2
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'arzg/vim-substrata'
Plug 'jsit/toast.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kkga/vim-envy'
Plug 'lifepillar/vim-colortemplate'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
Plug 'srcery-colors/srcery-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
"}}}2

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

set t_Co=256
if (has("termguicolors"))
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif

colorscheme srcery

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
