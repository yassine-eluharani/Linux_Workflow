-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	--[[ --------------------------- ]]
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "wittyjudge/gruvbox-material.nvim", as = "gruvbox-material" })
	--[[ --------------------------- ]]
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("ThePrimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-surround")
	-- Comment
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")

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

	-- mason lsp configuration
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("neovim/nvim-lspconfig")
	-- Allows us to configure so they appear in autpcomplition
	use("hrsh7th/cmp-nvim-lsp")
	-- enhanced UI to our lsp

	-- added functionalities for tsserver
	use("jose-elias-alvarez/typescript.nvim")
	-- icons for autocomplition
	use("onsails/lspkind.nvim")
	--Auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	--Git integration
	use("lewis6991/gitsigns.nvim")

	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")
	use("kdheepak/lazygit.nvim")

	use({
		"AckslD/nvim-neoclip.lua",
		requires = {
			-- you'll need at least one of these
			{ "nvim-telescope/telescope.nvim" },
			-- {'ibhagwan/fzf-lua'},
		},
		config = function()
			require("neoclip").setup()
		end,
	})

	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup()
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})
	use({
		"Wansmer/treesj",
		config = function()
			require("treesj").setup()
		end,
	})
	use({
		"f-person/git-blame.nvim",
		require("gitblame").setup({
			enabled = false,
		}),
	})

	use("xiyaowong/transparent.nvim")
	use("folke/flash.nvim")
	use("rcarriga/nvim-notify")
	use("folke/noice.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"haydenmeade/neotest-jest",
		},
	})
end)
