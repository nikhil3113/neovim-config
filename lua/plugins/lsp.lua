return {
  "neovim/nvim-lspconfig",

  event = {"BufReadPre", "BufNewFile"},
  config = function()

  local lspconfig = require("lspconfig")

    --Setup for lua
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"},
          },
        },
      },
    })

    --setup for tsserver
    lspconfig.ts_ls.setup({}) 

    --setup for html
    lspconfig.html.setup({})

    --CSS:
    lspconfig.cssls.setup({})

    lspconfig.gopls.setup({
      settings = {
        gopls = {
          gofumpt = true, -- Format using gofumpt (stricter gofmt)
          usePlaceholders = true, -- Enable placeholders for function parameters/snippets
          staticcheck = true, -- Enable additional checks
          analyses = {
            unusedparams = true,
            unreachable = true,
          },
        }
      }
    })

  end,
}

