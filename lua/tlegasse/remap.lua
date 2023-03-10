vim.g.mapleader = " "
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

vim.keymap.set({ "n", "v" }, "<leader>ya", [["ay]])
vim.keymap.set({ "n", "v" }, "<leader>ys", [["sy]])
vim.keymap.set({ "n", "v" }, "<leader>yd", [["dy]])
vim.keymap.set({ "n", "v" }, "<leader>yf", [["fy]])

vim.keymap.set({ "n", "v" }, "<leader>pa", [["ap]])
vim.keymap.set({ "n", "v" }, "<leader>ps", [["sp]])
vim.keymap.set({ "n", "v" }, "<leader>pd", [["dp]])
vim.keymap.set({ "n", "v" }, "<leader>pf", [["fp]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>v", "<cmd>e ~/.config/nvim/lua/tlegasse/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<tab>", "<cmd>bn<CR>")
vim.keymap.set("n", "<S-tab>", "<cmd>bp<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>")


vim.keymap.set("n", "<leader>e", "<cmd>Exp<CR>")

vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
