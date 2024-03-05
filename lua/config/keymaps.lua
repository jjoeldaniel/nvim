-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Misc
vim.keymap.set("n", "<leader>r", ":SearchReplaceSingleBufferOpen<CR>", { silent = true })
vim.keymap.set("n", "<leader>s", ":SymbolsOutline<CR>", { silent = true })
vim.keymap.set("n", "<leader>fm", ":LazyFormat<CR>", { silent = true })
vim.keymap.set("n", "<leader>a", ":AerialToggle<CR>", { silent = true })

-- Spider
vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
