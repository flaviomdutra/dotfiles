return {
  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    opts = {
      keymaps = {
        explorer = { select = { "<CR>", "l" } },
      },
    },
    keys = {
      { "<leader>gd", "<cmd>CodeDiff<cr>", desc = "CodeDiff" },
    },
  },
}
