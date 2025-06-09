require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>bY", "ggVGy", { desc = "Copy whole buffer" })
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "New buffer" })
