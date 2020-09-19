call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'

Plug 'andreypopp/vim-colors-plain'
Plug 'arcticicestudio/nord-vim'
Plug 'dylanaraps/wal.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'noahfrederick/vim-noctu'
Plug 'robertmeta/nofrils'
Plug 'romainl/apprentice'
Plug 'romainl/flattened'
Plug 'sainnhe/gruvbox-material'
Plug 'w0ng/vim-hybrid'
Plug 'yorickpeterse/happy_hacking.vim'

Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'

Plug 'vimwiki/vimwiki'

call plug#end()

syntax off

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
" set tabstop=4
set expandtab
set autoindent

set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
"set background=dark
" set t_Co=256
"if (has("termguicolors"))
"  set termguicolors
"endif

set background=light
colorscheme wal

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
