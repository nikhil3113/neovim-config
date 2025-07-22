return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8", -- or use `branch = "0.1.x"` if you prefer
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
        },
      },
    })
  end,
}
