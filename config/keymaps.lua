local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move between open buffers
keymap.set("n", "<leader>l", vim.cmd.bnext)
keymap.set("n", "<leader>h", vim.cmd.bprevious)

-- Quick Saving
-- vim.keymap.set("n", "<C-s>", ":w<CR><Esc>")
-- vim.keymap.set("i", "<C-s>", "<Esc>:w<CR><Esc>")
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Buffer closer
keymap.set("n", "<Leader>x", ":bp <BAR> bd #<CR>")

-- Open Fies
keymap.set("n", "<Leader>b", ":NvimTreeToggle<Return>", opts)
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)

-- Move highlighted lines with shift+j or shift+k
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Keep focus in the middle when moving up and down pages
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep focus in the middle when moving through searches
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- A scary place to end up, so let's bury it
keymap.set("n", "Q", "<nop>")

-- Vim Emmet Wrapping
keymap.set("v", "<leader><CR>", "<Plug>(emmet-expand-abbr)")
