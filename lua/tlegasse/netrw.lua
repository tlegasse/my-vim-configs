vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_liststyle = 3

function open_netrw_on_empty_buffer()
  -- Check if the current buffer is empty and not associated with a file
  if vim.fn.expand('%') == '' and vim.fn.line('$') == 1 and vim.fn.getline(1) == '' then
    -- Open Netrw in the current buffer
    vim.cmd('Explore')
  end
end

-- Call open_netrw_on_empty_buffer function after entering Neovim
vim.cmd('autocmd VimEnter * lua open_netrw_on_empty_buffer()')


-- Netrw-specific mappings
vim.cmd([[
    augroup netrw_setup | au!
        au FileType netrw nmap <buffer> l <CR>
        au FileType netrw nmap <buffer> h -
    augroup END
]])
