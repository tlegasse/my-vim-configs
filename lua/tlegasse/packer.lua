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
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'saadparwaiz1/cmp_luasnip'
    use 'mattn/emmet-vim'
    use 'numToStr/Comment.nvim'
    use 'jiangmiao/auto-pairs'
    use 'lukas-reineke/cmp-under-comparator'

    -- Syntax highlighting
    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- Appearance / Visibility
    use 'norcalli/nvim-colorizer.lua'
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
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
    use 'nvim-tree/nvim-web-devicons'
    use 'akinsho/bufferline.nvim'

    -- Code interaction
    use 'phelipetls/jsonpath.nvim'
    use 'kylechui/nvim-surround'
    use 'tpope/vim-repeat'

    -- Code navigation
    use 'ggandor/leap.nvim'
    use 'ggandor/flit.nvim'

    -- Git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- Undo Tree / File Tree
    use 'nvim-tree/nvim-tree.lua'
    use 'debugloop/telescope-undo.nvim'

    -- Misc
    use {
      'vimwiki/vimwiki',
        branch = 'dev'
    }
end)
