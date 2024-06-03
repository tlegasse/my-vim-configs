vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")

vim.keymap.set("n", "<leader>v", "<cmd>lua require'telescope.builtin'.git_files({cwd='~/.config/nvim/'})<CR>");

vim.keymap.set("n", "<C-PageUp>", "<cmd>bp<cr>")
vim.keymap.set("n", "<C-PageDown>", "<cmd>bn<cr>")

vim.keymap.set("x", "<leader>i", [["_dP]])
vim.keymap.set("n", "<leader>i", [["_diwP]])

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>")

vim.keymap.set("n", "<leader>w", "<C-space>")



vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")


-- Define a function to toggle line wrap with word break
function toggle_wrap()
    local wrap = vim.wo.wrap
    local linebreak = vim.wo.linebreak
    vim.wo.wrap = not wrap
    vim.wo.linebreak = not linebreak
end

-- Map <leader>sw to the toggle_wrap function
vim.api.nvim_set_keymap('n', '<leader>sw', '<cmd>lua toggle_wrap()<CR>', { noremap = true, silent = true })
