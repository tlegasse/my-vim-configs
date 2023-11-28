vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- greatest remap ever
vim.keymap.set("x", "<leader>i", [["_dP]])
vim.keymap.set("n", "<leader>i", [["_diwP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>v", "<cmd>e ~/.config/nvim/lua/tlegasse/packer.lua<CR>");

vim.keymap.set("n", "<leader>e", "<cmd>Exp<CR>")

vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>")

vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>gg", "<cmd>Telescope git_files<cr>")

vim.keymap.set("n", "<leader>wv", "<cmd>wincmd s<CR>")
vim.keymap.set("n", "<leader>wh", "<cmd>wincmd v<CR>")

vim.keymap.set("n", "<leader><leader>", ":")
vim.keymap.set("n", "<leader>f", ":LspZeroFormat<CR>")

vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")
vim.keymap.set("n", "<leader>z", "ZZ")

-- Debugger
vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dn", ":DapContinue<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>do", ":lua require('dapui').open({reset = true})<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dd", ":lua require('dapui').close()<CR>", {noremap=true})


vim.api.nvim_set_keymap('i', '<C-c>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-c>n', 'copilot#Next()', {expr=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-c>p', 'copilot#Next()', {expr=true, silent=true})
