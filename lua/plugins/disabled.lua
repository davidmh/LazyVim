return {
  -- Too much visual noise
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },

  -- Keep autopairs exclusive to lisp languages using parinfer?
  { "echasnovski/mini.pairs", enabled = false },

  -- TODO: I don't want to autocd into workspaces
  { "ahmedkhalf/project.nvim", enabled = false },
}
