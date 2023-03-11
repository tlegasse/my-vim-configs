require("zen-mode").setup({
    window = {
        width = .85, -- width will be 85% of the editor width
        backdrop = 0.25,
        options = {
            signcolumn = "no"
        }
    },
})

vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<cr>")
