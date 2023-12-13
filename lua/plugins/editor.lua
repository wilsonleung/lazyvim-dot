return {
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "center",
        layout_config = { preview_cutoff = 40, prompt_position = "bottom", width = 0.9, height = 0.5 },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
