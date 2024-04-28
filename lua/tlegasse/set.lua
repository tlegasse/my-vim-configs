vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 750

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g['sneak#label'] = 1

vim.o.backupcopy = "yes"
vim.o.shell = os.getenv("SHELL")

vim.g.diagnostics = "nvim_lsp"
vim.g.python3_host_prog = "/usr/local/bin/python3"


vim.g.vimwiki_list = {
    {
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = '.md'
    }
}

if vim.fn.has("wsl") == 1 then
    vim.g.clipboard = {
        name = "win32yank-wsl",
        copy = {
            ["+"] = "win32yank.exe -i --crlf",
            ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
        },
        cache_enabled = 1,
    }
end

vim.opt.clipboard = "unnamedplus"
vim.g.python3_host_prog = "python"
vim.env.LUA_CPATH = "/data/data/com.termux/files/home/lua_modules/lib/?.so;;"
vim.env.LUA_PATH = "/data/data/com.termux/files/home/lua_modules/share/lua/5.1/?.lua;;"
