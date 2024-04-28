local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})


require('mason-lspconfig').setup({
  automatic_installation = false,
})

local servers = { 'tsserver', 'lua_ls' }

for _, server in ipairs(servers) do
  local opts = {}

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

lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>ldp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>ldn', vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>lh', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>lwa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>lwr', vim.lsp.buf.remove_workspace_folder, opts)

    vim.keymap.set('n', '<leader>lwl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)

    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>lca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>lf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})


-- Example to customize borders in your lsp-config
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    -- Customize border (single, double, rounded, solid, shadow)
    border = "rounded"
  }
)
require'lspconfig'.lua_ls.setup {
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
      return
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        }
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      }
    })
  end,
  settings = {
    Lua = {}
  }
}

require'lspconfig'.gopls.setup{}
