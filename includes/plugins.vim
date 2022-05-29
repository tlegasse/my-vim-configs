call plug#begin()

" Behavior
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Highlighting
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'bronson/vim-crosshairs'

" Coc/LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

" Theming
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'

Plug 'moll/vim-bbye'
call plug#end()
