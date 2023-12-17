return {
  {
    "nvim-telescope/telescope.nvim",
    -- When loading it lazily, the default keybindings defined by LazyVim
    -- override the ones defined in my config.
    -- So I have to load it eagerly to make sure my keybindings take
    -- precedence.
    lazy = false,
    opts = {
      defaults = {
        layout_config = {
          prompt_position = "top",
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        sorting_strategy = "ascending",
        results_title = false,
      },
      pickers = {
        buffers = { sort_mru = true },
      },
    },
  },
}
