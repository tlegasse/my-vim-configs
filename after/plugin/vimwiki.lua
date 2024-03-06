-- Setting vimwiki files to autowrap on word break --
vim.cmd [[
augroup WikiFileSettings
  autocmd!
  autocmd FileType md setlocal wrap linebreak textwidth=0
augroup END
]]

vim.cmd [[
augroup WikiFiletype
  autocmd!
  autocmd BufNewFile,BufRead *.wiki setfiletype wiki
augroup END
]]
