return require('packer').startup(function(use)
    -- Packer
    use { 'wbthomason/packer.nvim', opt = true }

    -- tpope
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    use 'lifepillar/vim-gruvbox8'
    use 'nanotech/jellybeans.vim'
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/popup.nvim'} , {'nvim-lua/plenary.nvim'} }
    }
end)
