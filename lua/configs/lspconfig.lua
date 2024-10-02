-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- servers listed at https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

local servers = { "html", "cssls", "clangd", "basedpyright", "ruff_lsp", "java_language_server", "bashls", "tailwindcss", "ts_ls", "svelte", "astro", "eslint", "rust_analyzer", "gopls"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
