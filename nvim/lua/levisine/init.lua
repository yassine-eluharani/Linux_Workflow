require("levisine.remap")
require("levisine.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ","

require("lazy").setup({
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "wittyjudge/gruvbox-material.nvim", name = "gruvbox-material" },
	"nvim-treesitter/nvim-treesitter",
	"ThePrimeagen/harpoon",
	"mbbill/undotree",
	"tpope/vim-surround",
	-- Comment,
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"nvim-lualine/lualine.nvim",
	-- autocompletion,
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	--Snippets,
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	--Formatting & Linting,
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
	-- mason lsp configuration,
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	-- Allows us to configure so they appear in autpcomplition,
	"hrsh7th/cmp-nvim-lsp",
	-- enhanced UI to our lsp,
	-- added functionalities for tsserver,
	"jose-elias-alvarez/typescript.nvim",
	-- icons for autocomplition,
	"onsails/lspkind.nvim",
	--Auto closing,
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	--Git integration,
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol",
				delay = 500,
				ignore_whitespace = false,
				virt_text_priority = 100,
			},
			current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
		},
	},
	"christoomey/vim-tmux-navigator",
	"szw/vim-maximizer",
	"kdheepak/lazygit.nvim",
	{
		lazy = true,
		"AckslD/nvim-neoclip.lua",
		dependencies = {
			{ "nvim-telescope/telescope.nvim" },
		},
		config = function()
			require("neoclip").setup()
		end,
	},
	{
		lazy = true,
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		lazy = true,
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup()
		end,
	},
	{
		lazy = true,
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup()
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
	{
		"Wansmer/treesj",
		config = function()
			require("treesj").setup()
		end,
	},
	"xiyaowong/transparent.nvim",
	"lukas-reineke/indent-blankline.nvim",
	{
		lazy = true,
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"haydenmeade/neotest-jest",
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
})
