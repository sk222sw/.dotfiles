return {
  "nvim-neo-tree/neo-tree.nvim",
  -- enabled = false,
  branch = "v3.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle left<CR>", { desc = "[N]eo tree" })

    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
        }
      }
    })
  end,
}
