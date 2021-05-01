require('plugins')

local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.incsearch = true
o.termguicolors = false

bo.swapfile = false

wo.number = true
wo.relativenumber = true

-- vim.g.everforest_background = 'medium'
vim.cmd [[colorscheme ron]]
