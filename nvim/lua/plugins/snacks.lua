return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
      { "<leader>e", function() Snacks.explorer.open() end, desc = "Toggle file explorer" },
      { "<leader>E", function() Snacks.explorer.reveal() end, desc = "Reveal current file" },
    },
    opts = {
      explorer = {
        replace_netrw = true,
      },
      picker = {
        enabled = true,
      },
    },
  },
}
