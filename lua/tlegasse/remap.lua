vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Search and replace
vim.keymap.set("n", ";;", ":%s:::g<Left><Left><Left>")
vim.keymap.set("n", ";'", ":%s:::cg<Left><Left><Left><Left>")

vim.keymap.set("v", ";;", ":s:::g<Left><Left><Left>")
vim.keymap.set("v", ";'", ":s:::cg<Left><Left><Left><Left>")

-- Visual mode speedy stuff
vim.keymap.set("v", "<leader>e", "=")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Fixing indentation
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")

vim.keymap.set("n", "<leader>v", "<cmd>lua require'telescope.builtin'.git_files({cwd='~/.config/nvim/'})<CR>");

vim.keymap.set("n", "<C-PageUp>", "<cmd>bp<cr>")
vim.keymap.set("n", "<C-PageDown>", "<cmd>bn<cr>")

vim.keymap.set("n", "<leader>i", [["_diwP]])

vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>")

vim.keymap.set("n", "<leader>w", "i<C-@>")



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
