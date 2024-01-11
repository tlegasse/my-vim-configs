local plugins = {
    'wbthomason/packer.nvim',
    "theprimeagen/refactoring.nvim",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter-context",
    "jose-elias-alvarez/null-ls.nvim",
    "jay-babu/mason-null-ls.nvim",
    "mattn/emmet-vim",
    "Mofiqul/dracula.nvim",
    "phelipetls/jsonpath.nvim",
    "tpope/vim-surround",
    "ggandor/leap.nvim",
    "tpope/vim-repeat",
    "ggandor/flit.nvim",
    'nvim-lualine/lualine.nvim',
    'andymass/vim-matchup',
    'vimwiki/vimwiki',
    'RRethy/vim-illuminate',
    'ray-x/go.nvim',
    'ray-x/guihua.lua',
    'theHamsta/nvim-dap-virtual-text',
    'lewis6991/gitsigns.nvim',
    'leoluz/nvim-dap-go',
    'nvim-tree/nvim-tree.lua',
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                use_diagnostic_signs = true,
            }
        end
    },
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependancies = {
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
    },
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        "glacambre/firenvim",
        run = function() vim.fn["firenvim#install"](0) end,
        opt = true,
        setup = [[vim.cmd('packadd firenvim')]],
    },
    { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}},
    {
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        dependancies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",

            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            lang = "go",
            directory = vim.fn.stdpath("data") .. "/leetcode/",
        },
    }
}

require('dapui').setup()
require('dap-go').setup()
