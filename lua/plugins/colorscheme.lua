return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
      term_colors = true,
      integrations = {
        lsp_trouble = true,
        telescope = true,
        which_key = true,
      },
      custom_highlights = require("own.custom_highlights"),
    },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin-macchiato" } },
}
