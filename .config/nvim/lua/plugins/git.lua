return {
  "lewis6991/gitsigns.nvim",
  init = function()
    vim.keymap.set("n", "<leader>Gb", ":Gitsigns toggle_current_line_blame<cr>", { desc = "Toggle line blame" })

    require("which-key").register({
      ["<leader>G"] = { name = "Git" },
    })
  end
}
