-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.clipboard = {
  name = "CopyQ",
  copy = {
    ["+"] = "copyq add -",
    ["*"] = "copyq add -",
  },
  paste = {
    ["+"] = "copyq read 0",
    ["*"] = "copyq read 0",
  },
  cache_enabled = 1,
}

-- Optional: Enable the system clipboard by default
-- This allows you to use 'y' and 'p' without prepending "+
-- vim.opt.clipboard = "unnamedplus"
