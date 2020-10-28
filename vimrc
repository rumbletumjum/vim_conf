call plug#begin('~/.vim/plugged')

Plug 'andreypopp/vim-colors-plain'
Plug 'arcticicestudio/nord-vim'
Plug 'dylanaraps/wal.vim'
Plug 'franbach/miramare'
Plug 'gruvbox-community/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'jsit/toast.vim'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
Plug 'noahfrederick/vim-noctu'
Plug 'robertmeta/nofrils'
Plug 'romainl/apprentice'
Plug 'romainl/flattened'
Plug 'w0ng/vim-hybrid'
Plug 'yorickpeterse/happy_hacking.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'

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

set background=dark
set t_Co=256
if (has("termguicolors"))
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif

colorscheme miramare

set noshowmode
set number
set relativenumber

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set ignorecase

set colorcolumn=80

"augroup AutoSaveFolds
"    autocmd!
"    autocmd BufWinLeave * mkview
"    autocmd BufWinEnter * silent loadview
"augroup END
"highlight ColorColumn ctermbg=0 guibg=lightgrey

au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" vim: expandtab ts=2 sw=2 sts=2
