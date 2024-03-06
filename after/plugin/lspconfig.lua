require('mason').setup()
require('mason-lspconfig').setup()

local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

-- Configure language servers.
local servers = { 'pyright', 'tsserver', 'rust_analyzer', 'lua_ls' }

for _, server in ipairs(servers) do
  local opts = {
    -- Customize the language server settings here, if needed.
  }

  if server == 'lua_ls' then
    opts = vim.tbl_deep_extend('force', {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }, opts)
  end

  mason_lspconfig.setup_handlers({
    function(server_name)
      lspconfig[server_name].setup(opts)
    end,
    [server] = function()
      lspconfig[server].setup(opts)
    end,
  })
end
