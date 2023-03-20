-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use("nvim-lua/plenary.nvim")

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    vim.cmd('colorscheme rose-pine')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('ThePrimeagen/harpoon')
    use('tpope/vim-fugitive')
    use('mbbill/undotree')
    use("tpope/vim-surround")
    -- Comment
    use("numToStr/Comment.nvim")
    -- left sidebar
    use("nvim-tree/nvim-tree.lua")
    use("nvim-lualine/lualine.nvim")

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    --Snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    --Formatting & Linting
    use("jose-elias-alvarez/null-ls.nvim")
    use("jayp0521/mason-null-ls.nvim")
    -- use("jay-babu/mason-null-ls.nvim")
    -- mason lsp configuration
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    -- Allows us to configure so they appear in autpcomplition
    use("hrsh7th/cmp-nvim-lsp")
    -- enhanced UI to our lsp
    use({ "glepnir/lspsaga.nvim", branch = "main" })
    -- added functionalities for tsserver
    use("jose-elias-alvarez/typescript.nvim")
    -- icons for autocomplition
    use("onsails/lspkind.nvim")
    --Auto closing
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    --Git integration
    use("lewis6991/gitsigns.nvim")

    -- LSP using plugin lsp-zero
    -- use {
    --  'VonHeikemen/lsp-zero.nvim',
    --  branch = 'v1.x',
    --  requires = {
    --   -- LSP Support
    --   {'neovim/nvim-lspconfig'},             -- Required
    --   {'williamboman/mason.nvim'},           -- Optional
    --   {'williamboman/mason-lspconfig.nvim'}, -- Optional
    --
    --   -- Autocompletion
    --   {'hrsh7th/nvim-cmp'},         -- Required
    --   {'hrsh7th/cmp-nvim-lsp'},     -- Required
    --   {'hrsh7th/cmp-buffer'},       -- Optional
    --   {'hrsh7th/cmp-path'},         -- Optional
    --   {'saadparwaiz1/cmp_luasnip'}, -- Optional
    --   {'hrsh7th/cmp-nvim-lua'},     -- Optional
    --
    --   -- Snippets
    --   {'L3MON4D3/LuaSnip'},             -- Required
    --   {'rafamadriz/friendly-snippets'}, -- Optional
    --  }
    -- }
end)
