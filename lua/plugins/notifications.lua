return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "rcarriga/nvim-notify" },
    keys = {
      { "<leader>n", "<ignore>", desc = "Notifications" },
      {
        "<leader>no",
        function()
          vim.cmd([[Telescope notify]])
        end,
        desc = "open notifications",
      },
      {
        "<leader>nd",
        function()
          require("notify").dismiss({ pending = true, silent = true })
        end,
        desc = "discard notifications",
      },
    },
    opts = function()
      require("telescope").load_extension("notify")
    end,
  },
}
