return {
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.edge_style = "default"
      vim.g.edge_enable_italic = true
      vim.g.edge_transparent_background = 1
    end,
  },
}
