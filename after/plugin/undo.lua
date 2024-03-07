require("telescope").setup({
    extensions = {
        undo = {
            mappings = {
                i = {
                    ["<cr>"] = require("telescope-undo.actions").restore,
                },
                n = {
                    ["y"] = require("telescope-undo.actions").yank_additions,
                    ["<cr>"] = require("telescope-undo.actions").restore
                }
            },
            side_by_side = true,
            entry_format = "$ID: $TIME, $STAT",
            layout_strategy = "horizontal",
        },
    },
})

vim.api.nvim_create_user_command('TelescopeUndoWrapper', function()
  require('telescope').extensions.undo.undo()
  -- Use vim.defer_fn to delay execution, ensuring Telescope's command fully completes
  vim.defer_fn(function()
    vim.cmd([[stopinsert]])
  end, 50) -- Adjust the delay (in milliseconds) as necessary
end, {})

vim.keymap.set('n', '<leader>u', '<cmd>TelescopeUndoWrapper<CR>', { silent = true })
