return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

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
    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

    -- Completion / Writing
    use 'mattn/emmet-vim'

    -- Appearance / Visibility
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

    use 'norcalli/nvim-colorizer.lua'

    -- Code interaction

    use 'phelipetls/jsonpath.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'

    -- Code navigation
    use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- Undo Tree / File Tree
    use 'nvim-tree/nvim-tree.lua'
    use 'mbbill/undotree'

    use {
      'vimwiki/vimwiki',
        branch = 'dev'
    }

    use 'nvim-tree/nvim-web-devicons'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'akinsho/bufferline.nvim'
    use 'lukas-reineke/cmp-under-comparator'

    use 'jiangmiao/auto-pairs'
end)
