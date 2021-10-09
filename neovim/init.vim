" Plug {{{
call plug#begin(stdpath('data') . '/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-signify'
" tpope is a national treausre {{{
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
"}}} 
"themes {{{
Plug 'andreypopp/vim-colors-plain'
Plug 'gruvbox-community/gruvbox'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'kkga/vim-envy'
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
Plug 'noahfrederick/vim-noctu'
Plug 'nerdypepper/agila.vim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'robertmeta/nofrils'
Plug 'romainl/apprentice'
Plug 'romainl/flattened'
Plug 'sainnhe/gruvbox-material'
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
set signcolumn=yes

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
" if (has("termguicolors"))
"   set t_8f=[38;2;%lu;%lu;%lum
"   set t_8b=[48;2;%lu;%lu;%lum
"   set termguicolors
" endif

colorscheme gruvbox8

noremap <Space> <Nop>
let mapleader = "\<Space>"

vnoremap > >gv
vnoremap < <gv

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd BufWritePost .vimrc,.gvimrc source %

" vim:ts=2:sts=2:sw=2:et:fdm=marker
