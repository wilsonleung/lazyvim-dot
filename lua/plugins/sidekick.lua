return {
  "folke/sidekick.nvim",
  opts = {
    cli = {
      win = {
        layout = "bottom",
        split = {
          height = 0.5,
        },
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
