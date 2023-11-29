local function my_on_attach(bufnr)
  print("my_on_attach called")
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'h', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', 'l', api.tree.change_root_to_node,        opts('CD'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach
})
