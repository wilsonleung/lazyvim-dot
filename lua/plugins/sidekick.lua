return {
  "folke/sidekick.nvim",
  opts = {
    cli = {
      win = {
        layout = "bottom",
      },
    },
  },
  keys = {
    {
      "<leader>ai",
      function()
        require("sidekick.cli").toggle({ name = "copilot", focus = true })
      end,
      desc = "Sidekick Toggle Copilot",
    },
  },
}
