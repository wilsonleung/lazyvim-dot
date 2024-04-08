return {
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = function(_, opts)
      local actions = require("telescope.actions")

      return {
        defaults = {
          path_display = { "smart" },
          layout_strategy = "vertical",
          layout_config = { prompt_position = "bottom" },
          sorting_strategy = "ascending",
          winblend = 0,
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist,
            },
          },
        },
      }
    end,
  },
}
