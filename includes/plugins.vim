call plug#begin()

" Behavior
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'mogelbrod/vim-jsonpath'
Plug 'moll/vim-bbye'
Plug 'unblevable/quick-scope'

" Git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/vim-gitbranch'

" Highlighting
Plug 'mxw/vim-jsx'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Coc/LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'dag/vim-fish'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Theming
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'vim-airline/vim-airline'

Plug 'andymass/vim-matchup'
Plug 'ThePrimeagen/harpoon'
Plug 'vimwiki/vimwiki'
call plug#end()


"icebox
"Plug 'mcchrish/nnn.vim'
"Plug 'neoclide/coc-tsserver'
"Plug 'neovim/nvim-lspconfig'
"Plug 'junegunn/fzf.vim'
"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
"Plug 'vim-airline/vim-airline-themes'
"Plug 'thaerkh/vim-workspace'
"Plug 'mhinz/vim-signify'

lua require("harpoon.init").setup({mark_branch = true})
