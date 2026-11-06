return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          local name = vim.api.nvim_buf_get_name(0)
          local empty = vim.fn.argc() == 0
          local file = vim.fn.argc() == 1 and vim.fn.filereadable(name) == 1
          local directory = vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1
          if not (empty or file or directory) then
            return
          end
          vim.schedule(function()
            local window = vim.api.nvim_get_current_win()
            require("nvim-tree.api").tree.open({ find_file = file, path = directory and vim.fn.argv(0) or nil })
            if vim.api.nvim_win_is_valid(window) then
              vim.api.nvim_set_current_win(window)
            end
          end)
        end,
      })
    end,
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
        vim.keymap.set("n", "h", api.node.navigate.parent_close, vim.tbl_extend("force", opts, {
          desc = "Close directory or go to parent",
        }))
        vim.keymap.set("n", "l", api.node.open.edit, vim.tbl_extend("force", opts, {
          desc = "Open file or directory",
        }))
      end,
    },
  },
}
