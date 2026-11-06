return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeFindFile" },
    keys = {
      {
        "<leader>fe",
        function()
          require("nvim-tree.api").tree.toggle({ path = LazyVim.root() })
        end,
        desc = "Explorer nvim-tree (root dir)",
      },
      {
        "<leader>fE",
        function()
          require("nvim-tree.api").tree.toggle({ path = vim.fn.getcwd() })
        end,
        desc = "Explorer nvim-tree (cwd)",
      },
      { "<leader>e", "<leader>fe", desc = "Explorer nvim-tree (root dir)", remap = true },
      { "<leader>E", "<leader>fE", desc = "Explorer nvim-tree (cwd)", remap = true },
    },
    opts = {},
  },
}
