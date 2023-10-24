local zen_mode_setup, zen_mode = pcall(require, "zen-mode")
if not zen_mode_setup then
	return
end

zen_mode.setup({
	window = {
		backdrop = 0.95,
		width = 100,
		height = 1,
		options = {},
	},
	plugins = {
		options = {
			enabled = true,
			ruler = false,
			showcmd = false,
		},
		gitsigns = { enabled = false },
		tmux = { enabled = true },
		alacritty = {
			enabled = true,
			font = "18",
		},
	},
	on_open = function(win) end,
	on_close = function() end,
})

--Keymap ZenMode
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")
