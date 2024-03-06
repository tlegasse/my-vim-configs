return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- LSP
    use'jose-elias-alvarez/null-ls.nvim';
    use'jay-babu/mason-null-ls.nvim';


    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Autocompletio
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'

    -- Snippet
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'


    --- Debugging
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'leoluz/nvim-dap-go'

    -- Appearance / Visibility
    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup {
                icons = false,
                use_diagnostic_signs = true,
            }
        end
    })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use 'norcalli/nvim-colorizer.lua'

    -- Code interaction
    use 'mattn/emmet-vim'
    use 'phelipetls/jsonpath.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'theprimeagen/refactoring.nvim'

    -- Code navigation
    use 'ggandor/leap.nvim'
    use 'ggandor/flit.nvim'

    -- Git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- Undo Tree / File Tree
    use 'nvim-tree/nvim-tree.lua'
    use 'mbbill/undotree'

    use{
      'vimwiki/vimwiki',
        branch = 'dev'
    }
end)
