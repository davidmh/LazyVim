local lists = require("own.lists")

local actions = { "pick", "reword", "edit", "squash", "fixup", "break", "drop" }

-- loop through the git rebase actions for the commit in the current line
local function cycle()
  local current_line = vim.api.nvim_get_current_line()
  local current_index = lists.find_index(function(line)
    return vim.startswith(current_line, line)
  end, actions)

  if current_index then
    local current_action = ("^" .. actions[current_index])
    local next_action = (actions[(current_index + 1)] or actions[1])
    local next_line = string.gsub(current_line, current_action, next_action)
    return vim.api.nvim_set_current_line(next_line)
  else
    return nil
  end
end

return vim.keymap.set("n", "<tab>", cycle, { silent = true, nowait = true, buffer = 0 })
