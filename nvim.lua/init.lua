vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[packadd packer.nvim]]
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

require('plugins')

local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.incsearch = true
o.termguicolors = true

bo.swapfile = false

wo.number = true
wo.relativenumber = true

-- vim.g.everforest_background = 'medium'
vim.cmd [[colorscheme gruvbox8]]
