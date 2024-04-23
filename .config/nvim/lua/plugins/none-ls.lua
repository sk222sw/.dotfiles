return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      require("none-ls.diagnostics.eslint_d"),
      require("none-ls.code_actions.eslint_d"),
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}