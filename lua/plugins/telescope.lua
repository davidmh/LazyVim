return {
  {
    "nvim-telescope/telescope.nvim",
    -- When loading it lazily, the default keybindings defined by LazyVim
    -- override the ones defined in my config.
    -- So I have to load it eagerly to make sure my keybindings take
    -- precedence.
    lazy = false,
  },
}
