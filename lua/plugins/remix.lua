return {
  -- Remix integration
  {
    "remix",
    name = "remix",
    dir = "$REMIX_HOME/.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
      "tpope/vim-fugitive",
    },
    config = function()
      require("remix").setup({})
    end,
  },
}
