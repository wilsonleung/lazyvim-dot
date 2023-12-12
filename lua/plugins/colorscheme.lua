return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      colorscheme = "catppuccin-frappe",
    },
  },
}
