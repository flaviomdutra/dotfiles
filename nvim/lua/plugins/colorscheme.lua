return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true, -- Set to true if you want a transparent background
        styles = {
          sidebars = "transparent", -- or "transparent"
          floats = "dark", -- or "transparent"
        },
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
