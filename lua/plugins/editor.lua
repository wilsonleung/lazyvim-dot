return {
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = function(_, opts)
      local actions = require("telescope.actions")

      return {
        defaults = {
          path_display = { "smart" },
          -- layout_strategy = "center",
          -- layout_config = { preview_cutoff = 40, prompt_position = "bottom", width = 0.9, height = 0.5 },
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
