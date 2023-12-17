-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local git_signs = require("gitsigns")

local git_blame_line = function()
  git_signs.blame_line(true)
end

-- git keymaps
vim.keymap.set("n", "<leader>gs", ":Git<cr>", { desc = "git status", silent = true })
vim.keymap.set("n", "<leader>gc", ":Telescope git_branches<cr>", { desc = "git checkout branch", silent = true })
vim.keymap.set("n", "<leader>gw", ":Gwrite<cr>", { desc = "write into the git tree", silent = true })
vim.keymap.set("n", "<leader>gr", ":Gread<cr>", { desc = "read from the git tree", silent = true })
vim.keymap.set("n", "<leader>ge", ":Gedit<cr>", { desc = "edit from the git tree", silent = true })
vim.keymap.set("n", "<leader>gb", ":Git blame<cr>", { desc = "git blame", silent = true })
vim.keymap.set("n", "<leader>gd", ":Gdiff<cr>", { desc = "toggle git diff", silent = true })
vim.keymap.set("n", "<leader>ghb", git_blame_line, { desc = "blame current git hunk", silent = true })

-- resize windows
vim.keymap.set("n", "<M-,>", "<C-W>5<")
vim.keymap.set("n", "<M-.>", "<C-W>5>")
vim.keymap.set("n", "<M-->", "<C-W>5-")
vim.keymap.set("n", "<M-=>", "<C-W>5+")
vim.keymap.set("t", "<M-,>", "<C-\\><C-n><C-W>5<")
vim.keymap.set("t", "<M-.>", "<C-\\><C-n><C-W>5>")
vim.keymap.set("t", "<M-->", "<C-\\><C-n><C-W>5-")
vim.keymap.set("t", "<M-=>", "<C-\\><C-n><C-W>5+")

-- move across windows
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-l>", "<C-W>l")
vim.keymap.set("t", "<M-k>", "<C-\\><C-n><C-W>k")
vim.keymap.set("t", "<M-j>", "<C-\\><C-n><C-W>j")
vim.keymap.set("t", "<M-h>", "<C-\\><C-n><C-W>h")
vim.keymap.set("t", "<M-l>", "<C-\\><C-n><C-W>l")

-- telescope
vim.keymap.set("n", "<m-x>", ":Telescope<cr>", { silent = true })
vim.keymap.set("n", "<m-k>", ":Telescope keymaps<cr>", { silent = true })
