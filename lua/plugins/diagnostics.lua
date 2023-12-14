return {
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "cspell" })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "mason.nvim",
      "davidmh/cspell.nvim",
      opts = function()
        local cspell = require("cspell")
        local none_ls = require("null-ls")
        local utils = require("null-ls.utils")
        local b = none_ls.builtins

        local function root_pattern(pattern)
          return function(params)
            return utils.root_pattern(pattern)(vim.fn.expand(params.bufname))
          end
        end

        local cspell_opts = {
          prefer_local = "node_modules/.bin",
          filetypes = {
            "css",
            "gitcommit",
            "clojure",
            "html",
            "javascript",
            "json",
            "less",
            "lua",
            "markdown",
            "python",
            "ruby",
            "typescript",
            "typescriptreact",
            "yaml",
          },
        }

        local sources = {
          b.diagnostics.shellcheck,
          b.diagnostics.rubocop.with({
            cwd = root_pattern(".rubocop.yml"),
          }),
          b.formatting.rubocop.with({
            cwd = root_pattern(".rubocop.yml"),
          }),
          cspell.diagnostics.with(cspell_opts),
          cspell.code_actions.with(cspell_opts),
        }

        return {
          sources = sources,
          debug = true,
        }
      end,
    },
  },
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },
}
