local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require('cmp_nvim_lsp')

local capabilities = cmp_nvim_lsp.default_capabilities()

print("HEJJJJJ")
lspconfig.emmet_ls.setup({
  capabilities = capabilities
})

require("mason-lspconfig").setup {
  ensure_installed = { "emmet-language-server" },
}
