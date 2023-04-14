require("tlegasse.set")
require("tlegasse.remap")
require("tlegasse.packer")

local augroup = vim.api.nvim_create_augroup
local TlegasseGroup = augroup('tlegasse', {})

local autocmd = vim.api.nvim_create_autocmd

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = TlegasseGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.cmd [[
augroup WikiFileSettings
  autocmd!
  autocmd FileType wiki setlocal wrap linebreak textwidth=0
augroup END
]]

vim.cmd [[
augroup WikiFiletype
  autocmd!
  autocmd BufNewFile,BufRead *.wiki setfiletype wiki
augroup END
]]

require('leap').add_default_mappings()
