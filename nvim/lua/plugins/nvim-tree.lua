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
    opts = {
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        api.map.on_attach.default(bufnr)

        local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }
        vim.keymap.set(
          "n",
          "h",
          api.node.navigate.parent_close,
          vim.tbl_extend("force", opts, {
            desc = "Close directory or go to parent",
          })
        )
        vim.keymap.set(
          "n",
          "l",
          api.node.open.edit,
          vim.tbl_extend("force", opts, {
            desc = "Open file or directory",
          })
        )
        vim.keymap.set(
          "n",
          "v",
          api.node.open.vertical_no_picker,
          vim.tbl_extend("force", opts, {
            desc = "Open file in vertical split",
          })
        )
        vim.keymap.set(
          "n",
          "s",
          api.node.open.horizontal_no_picker,
          vim.tbl_extend("force", opts, {
            desc = "Open file in horizontal split",
          })
        )
      end,
    },
  },
}
