local setup, lualine = pcall(require, "lualine")
if not setup then
	return
end

local lualine_nightfly = require("lualine.themes.nightfly")
local nord = require("lualine.themes.palenight")
local iceberg_dark = require("lualine.themes.iceberg_dark")

--[[ local colors = { ]]
--[[ 	bg_dark = "#1f2335", ]]
--[[ 	bg = "#24283b", ]]
--[[ 	fg = "#c0caf5", ]]
--[[ 	fg_gutter = "#3b4261", ]]
--[[ } ]]

lualine.setup({
	options = {
		icons_enabled = true,
		theme = iceberg_dark,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
})

vim.keymap.set("n", "<leader>k", ":bprev<CR>")
vim.keymap.set("n", "<leader>l", ":bnext<CR>")
vim.keymap.set("n", "<leader>dd", ":bdelete<CR>")
