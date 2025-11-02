return {
  "snacks.nvim",
  opts = {
    picker = {
      layout = {
        preset = "vertical",
        layout = {
          width = 0.8,
        },
      },
      sources = {
        explorer = {
          layout = {
            layout = {
              width = 0.35,
            },
          },
        },
      },
      win = {
        list = {
          keys = {
            ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
          },
        },

        input = {
          keys = {
            ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
          },
        },
        preview = {
          keys = {
            ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
          },
        },
      },
    },
  },
}
