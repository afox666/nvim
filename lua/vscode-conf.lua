-- Lua:
-- For dark theme (neovim's default)
-- vim.o.background = 'dark'
-- For light theme
vim.o.background = 'light'

require('vscode').setup({
    -- Alternatively set style in setup
    style = 'light',

    -- Enable transparent background
    transparent = false,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,
})
require('vscode').load()
