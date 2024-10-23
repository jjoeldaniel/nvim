require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

map({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
map({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
map({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

map("n", "<leader>z", ":ZenMode<CR>", { silent = true })

map("n", "<leader>t", function()
  require("nvchad.themes").open {
    style = "flat",
  }
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
