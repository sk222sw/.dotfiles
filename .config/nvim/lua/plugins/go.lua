return {
  { "mfussenegger/nvim-dap" },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config  = function(_, opts)
      require("dap-go").setup(opts)
    end,
    keys = {
      n = {
        ["<leader>dgt"] = {
          function()
            require('dap-go').debug_test()
          end
        }
      }
    }
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("lspconfig").gopls.setup({
        cmd = { "gopls" },
        capabilities = capabilities,
        opts = {
          completeUnimported = true,
          usePlaceholders = true,
        }
      })

      local null_ls = require("null-ls")
      null_ls.setup({
        ft = "go",
        opts = function()
          local opts = {
            sources = {
              null_ls.builtins.formatting.gofmt,
            }
          }

          return opts
        end
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  }
}
