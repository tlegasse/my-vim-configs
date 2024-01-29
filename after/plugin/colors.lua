local ok, _ = pcall(vim.cmd, 'colorscheme catppuccin-latte')
pcall(vim.cmd, 'set background=light')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end
