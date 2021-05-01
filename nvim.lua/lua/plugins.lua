vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- tpope
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    use 'lifepillar/vim-gruvbox8'
    use 'nanotech/jellybeans.vim'
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'
end)
