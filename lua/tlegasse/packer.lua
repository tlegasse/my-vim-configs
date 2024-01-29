return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- LSP
    use'jose-elias-alvarez/null-ls.nvim';
    use'jay-babu/mason-null-ls.nvim';
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    --- Debugging
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'leoluz/nvim-dap-go'

    -- Appearance / Visibility
    -- use('Mofiqul/dracula.nvim')
    use 'RRethy/vim-illuminate'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'nvim-lualine/lualine.nvim'
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
    use 'nvim-treesitter/nvim-treesitter-context';

    -- Code interaction
    use 'mattn/emmet-vim'
    use 'phelipetls/jsonpath.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'theprimeagen/refactoring.nvim'

    -- Code navigation
    use 'ggandor/leap.nvim'
    use 'andymass/vim-matchup'
    use 'ggandor/flit.nvim'

    -- Load speed
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'

    -- Git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- Undo Tree / File Tree
    use 'nvim-tree/nvim-tree.lua'
    use 'mbbill/undotree'

    -- Task Warrior / Wiki
    use 'tools-life/taskwiki'
    use 'blindFS/vim-taskwarrior'
    use 'powerman/vim-plugin-AnsiEsc'
    use 'preservim/tagbar'
    use{
        'vimwiki/vimwiki',
        branch = 'dev'
    }

    use 'chrisbra/Colorizer'
end)
