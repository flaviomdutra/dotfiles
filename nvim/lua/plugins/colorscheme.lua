return {
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.edge_transparent_background = 1
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "edge",
    },
  },
}
