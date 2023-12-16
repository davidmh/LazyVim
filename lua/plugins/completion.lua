return {
  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "davidmh/cmp-nerdfonts",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          next = "<m-n>",
          prev = "<m-p>",
          accept = "<m-y>",
          accept_word = "<m-w>",
          accept_line = "<m-l>",
          dismiss = "<m-[>",
        },
      },
      panel = { enabled = true },
      filetypes = {
        clojure = true,
        javascript = true,
        typescript = true,
        typescriptreact = true,
        toggleterm = true,
        fennel = true,
        less = true,
        lua = true,
        nix = true,
        python = true,
        ruby = true,
        rust = true,
        zsh = function()
          local path = vim.api.nvim_buf_get_name(0)
          return string.match(path, ".*env.*") == nil and (not vim.endswith(path, ".zprofile"))
        end,
        sh = true,
        sql = true,
        ["*"] = false,
      },
    },
  },
}
