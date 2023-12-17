local helpers = require("own.helpers")

local function on_alternative_open(direction)
  return function()
    local entry = vim.fn.getqflist()[vim.fn.line(".")]
    local bufnr = entry["bufnr"]
    local lnum = entry["lnum"]
    local col = entry["col"]

    vim.fn.win_gotoid(helpers.get_largest_window_id())

    vim.cmd((direction .. " " .. vim.api.nvim_buf_get_name(bufnr)))

    return vim.fn.cursor(lnum, col)
  end
end

local opts = { buffer = 0, silent = true, nowait = true }

vim.keymap.set("n", "<c-v>", on_alternative_open("vsplit"), opts)
vim.keymap.set("n", "<c-x>", on_alternative_open("split"), opts)
vim.keymap.set("n", "<", ":silent colder<cr>", opts)
vim.keymap.set("n", ">", ":silent cnewer<cr>", opts)
