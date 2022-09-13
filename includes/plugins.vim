call plug#begin()

" Behavior
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
"Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/vim-gitbranch'
Plug 'mbbill/undotree'
Plug 'prettier/vim-prettier'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'mogelbrod/vim-jsonpath'

" Highlighting
Plug 'mxw/vim-jsx'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Coc/LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver'
Plug 'neovim/nvim-lspconfig'
Plug 'honza/vim-snippets'
Plug 'dag/vim-fish'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Theming
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'ryanoasis/vim-devicons'
"Plug 'vim-airline/vim-airline-themes'

Plug 'moll/vim-bbye'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
call plug#end()


"icebox
"Plug 'mcchrish/nnn.vim'
