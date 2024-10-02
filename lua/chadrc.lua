-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
}

M.ui = {
  theme = "doomchad",
}

M.mason.pkgs = {
  "lua-language-server",
  "stylua",
  "html-lsp",
  "css-lsp",
  "clangd",
  "clang-format",
  "ruff",
  "ruff-lsp",
  "basedpyright",
  "black",
  "java-language-server",
  "bash-language-server",
  "shfmt",
  "tailwindcss-language-server",
  "typescript-language-server",
  "svelte-language-server",
  "astro-language-server",
  "prettier",
  "eslint-lsp",
  "rust-analyzer",
  "gopls"
}

return M
