require'bufferline'.setup {
    animation = false,
    closable = false,

    diagnostics = {
        -- you can use a list
        {enabled = true, icon = 'ﬀ'}, -- ERROR
    },
    maximum_padding = 3,
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>")
vim.keymap.set("n", "<C-PageUp>", "<cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<C-PageDown>", "<cmd>BufferNext<CR>")

vim.keymap.set("n", "<C-S-PageUp>", "<cmd>BufferMovePrevious<CR>")
vim.keymap.set("n", "<C-S-PageDown>", "<cmd>BufferMoveNext<CR>")

map('n', '<leader>b', '<Cmd>BufferPick<CR>', opts)

vim.g.netrw_bufsettings = 'noma nomod nonu nowrap ro buflisted'
