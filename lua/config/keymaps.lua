-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- Return the current file's path relative to the project root (cwd)
local function relpath()
  local bufname = vim.fn.expand("%:p")
  local cwd = vim.fn.getcwd()
  if bufname:sub(1, #cwd) == cwd then
    return bufname:sub(#cwd + 2) -- strip cwd + '/'
  end
  return bufname -- fallback: outside the project root
end

-- Copy file path with selection range in visual mode (e.g. src/controller/AppController.java:123-345)
vim.keymap.set("v", "<leader>p", function()
  local start_pos = vim.fn.getpos('v')
  local end_pos = vim.fn.getpos('.')
  local start_line = start_pos[2]
  local end_line = end_pos[2]

  local range = string.format("%d-%d", start_line, end_line)
  local result = string.format("%s:%s", relpath(), range)

  vim.fn.setreg("+", result) -- system clipboard
  vim.api.nvim_echo({ { result, "MsgArea" } }, false, {})
end, { desc = "Copy file path with selection range", silent = true })

-- Copy relative file path to clipboard (no line number)
vim.keymap.set("n", "<leader>p", function()
  local result = relpath()
  vim.fn.setreg("+", result)
  vim.api.nvim_echo({ { result, "MsgArea" } }, false, {})
end, { desc = "Copy file path to clipboard", silent = true })
