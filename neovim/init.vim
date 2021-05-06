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
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'neovim/nvim-lspconfig'
"themes {{{
Plug 'andreypopp/vim-colors-plain'
Plug 'danilo-augusto/vim-afterglow'
Plug 'franbach/miramare'
Plug 'gruvbox-community/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
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

set completeopt=menuone,noinsert,noselect
set shortmess+=c

set background=dark
set t_Co=256
if (has("termguicolors"))
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
  set termguicolors
endif

colorscheme gruvbox8_hard

noremap <Space> <Nop>
let mapleader = "\<Space>"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fh <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>

nnoremap <leader>gs <cmd>Git<cr>

vnoremap > >gv
vnoremap < <gv

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

lua << EOF
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.hls.setup{on_attach=require'completion'.on_attach}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  hightlight = { enable = true },
  indent = { enable = true }
}
EOF

" vim:ts=2:sts=2:sw=2:et:fdm=marker
