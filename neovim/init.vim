" Plug {{{
call plug#begin(stdpath('data') . '/plugged')
Plug 'sheerun/vim-polyglot'

" tpope is a national treausre {{{
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
"}}} 

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neovim/nvim-lspconfig'
"themes {{{
Plug 'andreypopp/vim-colors-plain'
Plug 'danilo-augusto/vim-afterglow'
Plug 'franbach/miramare'
Plug 'jacoborus/tender.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'noahfrederick/vim-noctu'
Plug 'nerdypepper/agila.vim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'robertmeta/nofrils'
Plug 'romainl/apprentice'
Plug 'romainl/flattened'
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'w0ng/vim-hybrid'
Plug 'xero/sourcerer.vim'

call plug#end()
" }}}
" }}}

set listchars=tab:»·,trail:·,nbsp:·,eol:¬,extends:>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set expandtab

set noshowmode
set number
set relativenumber
set nowrap
set cursorline
set colorcolumn=80

set splitright
set splitbelow

set hidden
set noswapfile
set nobackup
set undofile

set background=dark
set t_Co=256
if (has("termguicolors"))
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif

colorscheme everforest

noremap <Space> <Nop>
let mapleader = "\<Space>"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fh <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>

vnoremap > >gv
vnoremap < <gv

lua << EOF
require'lspconfig'.clangd.setup{}
EOF

" vim:ts=2:sts=2:sw=2:et:fdm=marker
