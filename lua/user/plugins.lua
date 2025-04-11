-- Initialize vim-plug
local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- Core Editor Tools
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.8' })
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'folke/which-key.nvim'

-- UI & Themes
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('rose-pine/neovim', { ['as'] = 'rose-pine' })
Plug 'goolord/alpha-nvim'
Plug 'MaximilianLloyd/ascii.nvim'
Plug 'nvim-lualine/lualine.nvim'

-- Syntax & Language Support
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

-- LSP & Formatting
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'stevearc/conform.nvim'

-- CMP
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

-- Git Integration
Plug 'kdheepak/lazygit.nvim'
Plug 'sindrets/diffview.nvim'

vim.call('plug#end')

return {}
