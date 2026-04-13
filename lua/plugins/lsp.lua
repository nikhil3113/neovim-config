return {
  "neovim/nvim-lspconfig",

  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.lsp.config({
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      },
      ts_ls = {},
      html = {},
      cssls = {},
      gopls = {
        settings = {
          gopls = {
            gofumpt = true,
            usePlaceholders = true,
            staticcheck = true,
            analyses = {
              unusedparams = true,
              unreachable = true,
            },
          },
        },
      },
      jdtls = {
        settings = {
          java = {
            format = {
              enabled = true,
            },
            saveActions = {
              organizeImports = true,
            },
          },
        },
      },
    })

    vim.lsp.enable("lua_ls")
    vim.lsp.enable("ts_ls")
    vim.lsp.enable("html")
    vim.lsp.enable("cssls")
    vim.lsp.enable("gopls")
    vim.lsp.enable("jdtls")
  end,
}


