vim.g.mapleader = " "

local keymap = vim.keymap -- for conciesness

-- general keymaps
-- "i" : insert mode
-- "n" : normal mode
keymap.set("i", "jk", "<ESC>")

-- no hlssearch
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete a charecter but do not add in register
keymap.set("n", "x", '"_x')

-- integer value increment and decrement
-- keymap.set("n", "<leader>+", "<C-a>")
-- keymap.set("n", "<leader>-", "<C-a>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontically
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

-- Navigate Buffers
-- keymap.set("n", "S-l", ":bnext<CR>")
-- keymap.set("n", "S-h", ":bprevious<CR>")

-- visual
-- stay in indent mode
keymap.set("n", "<", "<gv")
keymap.set("n", ">", ">gv")

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==")
keymap.set("v", "<A-k>", ":m .-2<CR>==")
keymap.set("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv")
keymap.set("x", "K", ":move '<-2<CR>gv-gv")
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- plugin keymaps

-- vim-maximazier
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
