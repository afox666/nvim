require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')
require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup{}
  end,
  -- Next, you can provide targeted overrides for specific servers.
  ["lua_ls"] = function ()
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
    }
  }
  end,
  ["clangd"] = function ()
    lspconfig.clangd.setup {
      cmd = {
        "clangd",
        "--background-index",
        "--compile-commands-dir=build", --compile_command.json相对路径，cmake默认生成在build目录，可自行配置
        "-j=6",
        "--all-scopes-completion",
        "--completion-style=detailed",
        "--header-insertion=iwyu",
        "--pch-storage=memory",
        "--cross-file-rename",
        "--enable-config",
        "--fallback-style=Google",
        "--pretty",
        "--clang-tidy",
        "--query-driver=/usr/bin/clangd",  
      }
    }
  end
})
