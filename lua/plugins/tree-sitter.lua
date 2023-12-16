return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "ruby",
        "nix",
        "fennel",
      })
      opts.incremental_selection.keymaps = {
        init_selection = "gnn",
        node_incremental = "<tab>",
        node_decremental = "<s-tab>",
        scope_incremental = "<leader><tab>",
      }
    end,
  },
}
