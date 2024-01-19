local ok, _ = pcall(vim.cmd, 'colorscheme PaperColor')
pcall(vim.cmd, 'set background=light')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end
