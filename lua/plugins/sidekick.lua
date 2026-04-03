return {
  "folke/sidekick.nvim",
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
