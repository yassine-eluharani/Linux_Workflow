local setup, lualine = pcall(require, "lualine" )
if not setup then
    return
end

local lualine_nightfly= require("lualine.themes.nightfly")

lualine.setup()
