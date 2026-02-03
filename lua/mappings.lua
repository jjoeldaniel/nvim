require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local nomap = vim.keymap.del

map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
map({ "n", "x", "o", "v" }, "s", "<Plug>(leap)")
map({ "n", "v" }, "S", "<Plug>(leap-backward)")
map("n", "<leader>lg", ":LazyGit<CR>", { silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
