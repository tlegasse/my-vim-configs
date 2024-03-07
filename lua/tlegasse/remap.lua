vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")

vim.keymap.set("n", "<C-v>", "<cmd>lua require'telescope.builtin'.git_files({cwd='~/.config/nvim/'})<CR>");

vim.keymap.set("n", "<Tab>", "<cmd>bn<cr>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bp<cr>")


vim.keymap.set("x", "<leader>i", [["_dP]])
vim.keymap.set("n", "<leader>i", [["_diwP]])

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>")
