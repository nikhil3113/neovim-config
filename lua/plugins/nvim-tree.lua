return {
  "nvim-tree/nvim-tree.lua",
  requires= {
    "nvim-tree/nvim-web-devicons"
  },
  config = function ()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
        icons = {
          webdev_colors = true,
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          }
        }
      },
      filters = {
        dotfiles = true,
      },
    })

  end
}
