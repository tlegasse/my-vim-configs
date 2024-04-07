vim.api.nvim_create_autocmd({"BufEnter", "BufRead", "BufNewFile"}, {
  pattern = "*.md",
  command = "set filetype=markdown",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufRead", "BufNewFile"}, {
  pattern = "~/vimwiki/*.md",
  command = "set filetype=vimwiki",
})
