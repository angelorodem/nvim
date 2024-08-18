require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<F8>", ":TagbarToggle<CR>")

map({ "n", "i", "v" }, "<leader>dd", '"_d') -- delete line without yanking
-- Alt move lines
map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Invert J and keymap

map({ "n", "v" }, "j", "k", { noremap = true })
map({ "n", "v" }, "k", "j", { noremap = true })
