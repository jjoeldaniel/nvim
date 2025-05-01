-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = true,

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,
}

M.mason = {
  pkgs = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "clangd",
    "clang-format",
    "ruff",
    "basedpyright",
    "java-language-server",
    "bash-language-server",
    "shfmt",
    "tailwindcss-language-server",
    "typescript-language-server",
    "svelte-language-server",
    "astro-language-server",
    "prettierd",
    "eslint-lsp",
    "rust-analyzer",
    "gopls",
  },
}

return M
