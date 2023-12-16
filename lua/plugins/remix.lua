return {
  -- Remix integration
  {
    "remix",
    name = "remix",
    dir = "$REMIX_HOME/.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
      "tpope/vim-projectionist",
    },
    config = function()
      require("remix").setup({})
    end,
  },
}
