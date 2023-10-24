local setup, lualine = pcall(require, "lualine")
if not setup then
	return
end

local lualine_nightfly = require("lualine.themes.nightfly")
local nord = require("lualine.themes.palenight")

--[[ local colors = { ]]
--[[ 	bg_dark = "#1f2335", ]]
--[[ 	bg = "#24283b", ]]
--[[ 	fg = "#c0caf5", ]]
--[[ 	fg_gutter = "#3b4261", ]]
--[[ } ]]

lualine.setup({
	options = {
		icons_enabled = true,
		theme = nord,
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
	--[[ sections = { ]]
	--[[ 	lualine_a = { "mode" }, ]]
	--[[ lualine_b = { ]]
	--[[     { ]]
	--[[         "buffers", ]]
	--[[         show_filename_only = true, ]]
	--[[         hide_filename_extension = false, ]]
	--[[         show_modified_status = true, ]]
	--[[         mode = 0, ]]
	--[[         max_length = vim.o.columns * 2 / 3, ]]
	--[[         filetype_names = { ]]
	--[[             TelescopePrompt = "Telescope", ]]
	--[[             dashboard = "Dashboard", ]]
	--[[             packer = "Packer", ]]
	--[[             fzf = "FZF", ]]
	--[[             alpha = "Alpha", ]]
	--[[         }, ]]
	--[[         use_mode_colors = false, ]]
	--[[         buffers_color = { ]]
	--[[             active = { bg = colors.bg, fg = colors.fg }, ]]
	--[[             inactive = { bg = colors.bg_dark, fg = colors.fg_gutter }, ]]
	--[[         }, ]]
	--[[         symbols = { ]]
	--[[             modified = " ●", ]]
	--[[             alternate_file = "#", ]]
	--[[             directory = "", ]]
	--[[         }, ]]
	--[[     }, ]]
	--[[ }, ]]
	--[[ lualine_c = { "branch", "diff", "diagnostics" }, ]]
	--[[ 	lualine_x = { "encoding", "fileformat", "filetype" }, ]]
	--[[ 	lualine_y = { "progress" }, ]]
	--[[ 	lualine_z = { "location" }, ]]
	--[[ }, ]]
})

vim.keymap.set("n", "<leader>k", ":bprev<CR>")
vim.keymap.set("n", "<leader>l", ":bnext<CR>")
vim.keymap.set("n", "<leader>dd", ":bdelete<CR>")
