
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
vim.cmd([[ highlight NvimTreeIndentMarker guifg = #3FC5FF]])

nvimtree.setup({
    disable_netrw = false,
    hijack_netrw = false,

    actions = {
        open_file = {
            window_picker = {
                enable = false,
            }
        }
    }
})
