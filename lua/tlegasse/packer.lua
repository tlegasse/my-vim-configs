-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                use_diagnostic_signs = true,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })


    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");

    use("jose-elias-alvarez/null-ls.nvim");
    use("jay-babu/mason-null-ls.nvim");

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

    use("mattn/emmet-vim")
    use('Mofiqul/dracula.nvim')
    use("phelipetls/jsonpath.nvim")
    use("tpope/vim-surround")
    use("ggandor/leap.nvim")
    --use("preservim/nerdcommenter")

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use("tpope/vim-repeat")
    use("ggandor/flit.nvim")

    use('nvim-lualine/lualine.nvim')

    use('andymass/vim-matchup')

    use('vimwiki/vimwiki')

    use('RRethy/vim-illuminate')

    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'

    use({
      "glacambre/firenvim",
      run = function() vim.fn["firenvim#install"](0) end,
      opt = true,
      setup = [[vim.cmd('packadd firenvim')]],
    })
    use('lewis6991/gitsigns.nvim')

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
    use 'theHamsta/nvim-dap-virtual-text'

    use 'leoluz/nvim-dap-go'
    use 'nvim-tree/nvim-tree.lua'

    require('dapui').setup()
    require('dap-go').setup()

    use 'ianding1/leetcode.vim'
end)
