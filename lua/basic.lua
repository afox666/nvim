local o=vim.o
o.tabstop=4
o.softtabstop=4
o.shiftwidth=4
o.expandtab=true
o.smartindent = true
o.number = true

require("vscode-conf")

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'vscode'
    -- ... your lualine config
  }
}
