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
    use("theprimeagen/harpoon")
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
    use("preservim/nerdcommenter")

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use("vimwiki/vimwiki")

    use("tpope/vim-repeat")
    use("ggandor/flit.nvim")
    use("christoomey/vim-tmux-navigator")

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    use {
        'KadoBOT/nvim-spotify',
        requires = 'nvim-telescope/telescope.nvim',
        config = function()
            local spotify = require 'nvim-spotify'

            spotify.setup {
                -- default opts
                status = {
                    update_interval = 10000, -- the interval (ms) to check for what's currently playing
                    format = '%s %t by %a'   -- spotify-tui --format argument
                }
            }
        end,
        run = 'make'
    }

    use({
        "folke/noice.nvim",
        require("noice").setup({
            routes = {
                {
                    filter = {
                        event = "msg_show",
                        kind = "",
                        find = "written",
                    },
                    opts = { skip = true },
                },
            },
            cmdline = {
                view = "cmdline",
            },
        }),
        requires = {
            "MunifTanjim/nui.nvim",
        }
    })
end)
