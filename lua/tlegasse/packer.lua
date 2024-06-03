return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- LSP and completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use {
        'L3MON4D3/LuaSnip',
        requires = 'rafamadriz/friendly-snippets'
    }
    use 'saadparwaiz1/cmp_luasnip'
    use 'mattn/emmet-vim'
    use 'numToStr/Comment.nvim'
    use 'jiangmiao/auto-pairs'
    use 'lukas-reineke/cmp-under-comparator'
    use 'onsails/lspkind.nvim'

    -- Syntax highlighting
    -- use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    -- use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- Appearance / Visibility
    use 'norcalli/nvim-colorizer.lua'
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use ({
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup {
                icons = false,
                use_diagnostic_signs = true,
            }
        end
    })
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Code interaction
    use 'phelipetls/jsonpath.nvim'
    use 'kylechui/nvim-surround'
    use 'tpope/vim-repeat'

    -- Code navigation
    use 'ggandor/leap.nvim'
    use 'ggandor/flit.nvim'

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'

    -- Undo Tree / File Tree
    use 'nvim-tree/nvim-tree.lua'
    use 'debugloop/telescope-undo.nvim'

    -- Misc
    use {
      'vimwiki/vimwiki',
        branch = 'dev'
    }
    use 'majutsushi/tagbar'
    use 'powerman/vim-plugin-AnsiEsc'

    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
end)
