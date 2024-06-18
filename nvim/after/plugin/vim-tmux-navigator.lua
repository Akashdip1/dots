local keymap = vim.keymap.set

keymap("n", "<C-l>",":TmuxNavigateRight<CR>")
keymap("n", "<C-h>",":TmuxNavigateLeft<CR>")
keymap("n", "<C-j>",":TmuxNavigateDown<CR>")
keymap("n", "<C-k>",":TmuxNavigateRight<CR>")
