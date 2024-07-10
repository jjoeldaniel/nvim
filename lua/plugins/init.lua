return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
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
        "rust-analyzer"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "astro",
        "svelte",
        "rust"
      },
    },
  },
}
