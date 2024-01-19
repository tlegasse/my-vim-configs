require("tlegasse.set")
require("tlegasse.remap")
require("tlegasse.packer")
require("tlegasse.netrw")

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

autocmd({ "BufWritePre" }, {
    group = TlegasseGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})



-- Setting vimwiki files to autowrap on word break --
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

vim.g.vimwiki_list = {
    {
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = '.md'
    }
}

-- An augroup that runs last when vim is loaded that sets vim.opt.laststatus to 0
-- This is to prevent the statusline from showing up on startup

vim.cmd [[
augroup LastStatus
  autocmd!
  autocmd VimEnter * set laststatus=0
augroup END
]]
