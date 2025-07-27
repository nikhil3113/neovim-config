local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  require("plugins.telescope"),
  require("plugins.treesitter"),
  require("plugins.colors"),
  require("plugins.undotree"),
  require("plugins.fugitive"),
  require("plugins.lsp"),
  require("plugins.completions"),
  require("plugins.autopairs"),
  require("plugins.mason"),
})
