return {
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "center",
        layout_config = { prompt_position = "bottom", width = 100 },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
