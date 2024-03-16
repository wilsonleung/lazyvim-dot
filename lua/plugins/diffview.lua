return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>gS",
      "<cmd>DiffviewOpen<cr>",
      mode = "n",
      desc = "Diffview open",
      silent = true,
    },
    {
      "<leader>gF",
      "<cmd>DiffviewFileHistory %<cr>",
      mode = "n",
      desc = "Diffview current file history",
      silent = true,
    },
    {
      "<leader>gx",
      "<cmd>set hidden<cr><cmd>DiffviewClose<cr><cmd>set nohidden<cr>",
      mode = "n",
      desc = "Diffview close",
      silent = true,
    },
  },
  opts = {},
}
