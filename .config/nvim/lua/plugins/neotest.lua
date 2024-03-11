return {

  "nvim-neotest/neotest",
  keys = {
    {
      "<leader>tw",
      function()
        require("neotest").watch.toggle()
      end,
      --run(vim.fn.expand("%")) end, desc = "Run File" },
      desc = "Toggle watch",
      -- function() require("neotest").watch
    },
  },
}
