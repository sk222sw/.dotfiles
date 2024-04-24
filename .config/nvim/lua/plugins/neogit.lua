return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",  -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = true,
  keys = {
    { "<leader>Go", mode = { "n" }, function() require("neogit").open() end,           desc = "Neogit open" },
    { "<leader>Gc", mode = { "n" }, function() require("neogit").open({ "commit" }) end, desc = "Neogit commit" },
  },
}
