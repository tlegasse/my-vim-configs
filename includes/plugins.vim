call plug#begin()

" Behavior
Plug 'justinmk/vim-sneak'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'mogelbrod/vim-jsonpath'
Plug 'moll/vim-bbye'
Plug 'unblevable/quick-scope'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'ThePrimeagen/harpoon'

" Git
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'

" Highlighting
Plug 'mxw/vim-jsx'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'itchyny/vim-cursorword'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

" Coc/LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'dag/vim-fish'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'
"Plug 'dense-analysis/ale'

" Theming
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'

Plug 'vimwiki/vimwiki'
Plug 'nathom/filetype.nvim'

Plug 'lewis6991/impatient.nvim'
"Plug 'tpope/vim-vinegar'
call plug#end()


"Plug 'vwxyutarooo/nerdtree-devicons-syntax'
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
