-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local git_signs = require("gitsigns")

local git_blame_line = function()
  git_signs.blame_line(true)
end

vim.keymap.set("n", "<leader>gs", ":Git<cr>", { desc = "git status", silent = true })
vim.keymap.set("n", "<leader>gc", ":Telescope git_branches<cr>", { desc = "git checkout branch", silent = true })
vim.keymap.set("n", "<leader>gw", ":Gwrite<cr>", { desc = "write into the git tree", silent = true })
vim.keymap.set("n", "<leader>gr", ":Gread<cr>", { desc = "read from the git tree", silent = true })
vim.keymap.set("n", "<leader>ge", ":Gedit<cr>", { desc = "edit from the git tree", silent = true })
vim.keymap.set("n", "<leader>gb", ":Git blame<cr>", { desc = "git blame", silent = true })
vim.keymap.set("n", "<leader>gd", ":Gdiff<cr>", { desc = "toggle git diff", silent = true })
vim.keymap.set("n", "<leader>ghb", git_blame_line, { desc = "blame current git hunk", silent = true })
