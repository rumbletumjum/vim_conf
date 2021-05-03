packadd minpac

" minpac {{{
call minpac#init()
call minpac#add('k-takata/minpac', { 'type': 'opt' })

call minpac#add('sheerun/vim-polyglot')

" tpope is a national treausre {{{
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-surround')
"}}} 

call minpac#add('nvim-lua/plenary.nvim')
call minpac#add('nvim-lua/popup.nvim')
call minpac#add('nvim-telescope/telescope.nvim')

call minpac#add('nvim-treesitter/nvim-treesitter')

call minpac#add('neovim/nvim-lspconfig')
"themes {{{
call minpac#add('andreypopp/vim-colors-plain')
call minpac#add('arcticicestudio/nord-vim', { 'branch': 'develop' })
call minpac#add('danilo-augusto/vim-afterglow')
call minpac#add('franbach/miramare')
call minpac#add('jacoborus/tender.vim')
call minpac#add('jeffkreeftmeijer/vim-dim')
call minpac#add('lifepillar/vim-gruvbox8')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('morhetz/gruvbox')
call minpac#add('noahfrederick/vim-noctu')
call minpac#add('nerdypepper/agila.vim')
call minpac#add('owickstrom/vim-colors-paramount')
call minpac#add('robertmeta/nofrils')
call minpac#add('romainl/apprentice')
call minpac#add('romainl/flattened')
call minpac#add('sainnhe/edge', {'type': 'opt' })
call minpac#add('sainnhe/everforest', {'type': 'opt' })
call minpac#add('sainnhe/gruvbox-material', {'type': 'opt' })
call minpac#add('sainnhe/sonokai', {'type': 'opt' })
call minpac#add('w0ng/vim-hybrid')
call minpac#add('xero/sourcerer.vim')
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

packadd! gruvbox-material
colorscheme gruvbox-material

noremap <Space> <Nop>
let mapleader = "\<Space>"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fh <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>

vnoremap > >gv
vnoremap < <gv

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', { 'do': 'call minpac#status()' })
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

lua << EOF
require'lspconfig'.clangd.setup{}
EOF

" vim:ts=2:sts=2:sw=2:et:fdm=marker
