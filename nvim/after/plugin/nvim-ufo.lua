vim.o.foldenable = false

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

-- Option 3: treesitter as a main provider instead
require("ufo").setup({
	provider_selector = function()
		return { "treesitter", "indent" }
	end,
})
