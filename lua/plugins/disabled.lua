return {
  -- Too much visual noise
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },

  -- Keep autopairs exclusive to lisp languages using parinfer?
  { "echasnovski/mini.pairs", enabled = false },

  -- Using tpope's surround instead
  { "echasnovski/mini.surround", enabled = false },

  -- This makes movement a bit too noisy for my taste
  { "folke/flash.nvim", enabled = false },

  -- TODO: I don't want to autocd into workspaces
}
