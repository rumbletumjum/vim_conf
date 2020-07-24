packadd minpac

call minpac#init()
call minpac#add('k-takata/minpac', { 'type': 'opt' })
" call minpac#add('itchyny/lightline.vim')
call minpac#add('vimwiki/vimwiki')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('tpope/vim-surround')
call minpac#add('fatih/vim-go', { 'rev': 'v1.23' })

" themes
call minpac#add('andreypopp/vim-colors-plain')
call minpac#add('arcticicestudio/nord-vim', { 'branch': 'develop' })
call minpac#add('jeffkreeftmeijer/vim-dim')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('morhetz/gruvbox')
call minpac#add('noahfrederick/vim-noctu')
call minpac#add('robertmeta/nofrils')
call minpac#add('romainl/apprentice')
call minpac#add('romainl/flattened')
call minpac#add('sainnhe/gruvbox-material', {'type': 'opt' })
call minpac#add('w0ng/vim-hybrid')
call minpac#add('xero/sourcerer.vim')

set listchars=tab:▸\ ,eol:¬,trail:#,extends:>

set shiftwidth=4
set softtabstop=0
set tabstop=4
set expandtab

set background=dark
set t_Co=256
colorscheme gruvbox

set noshowmode
set number
set relativenumber

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', { 'do': 'call minpac#status()' })
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

"nnoremap ,ho :HexokinaseTurnOn
"nnoremap ,ht :HexokinaseToggle
