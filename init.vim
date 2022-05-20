call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

let g:coc_data_home = $HOME . '/.config/coc'

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'

Plug 'justinmk/vim-sneak'

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'

Plug 'mhinz/vim-signify'

Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'mattn/emmet-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sbdchd/neoformat'

Plug 'ryanoasis/vim-devicons'

Plug 'gcmt/taboo.vim'

Plug 'thaerkh/vim-workspace'

Plug 'altercation/vim-colors-solarized'

Plug 'pangloss/vim-javascript'

Plug 'mxw/vim-jsx'

Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Initialize plugin system
call plug#end()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

set guifont=BitstreamVeraSansMono_NF:h13


" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif


" Start Theme Settings
set background=dark
colorscheme solarized
highlight iCursor guifg=white guibg=steelblue


" Additional
set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

set updatetime=100

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set encoding=utf-8
let g:airline_powerline_fonts = 1
set guifont=Fira\ Mono\ Medium\ for\ Powerline:h9

let g:loaded_perl_provider = 0
set encoding=UTF-8

set sessionoptions+=tabpages,globals

let g:workspace_autocreate = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

highlight clear SignColumn

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'type {}']}, <bang>0)

nnoremap <SPACE> <Nop>
let mapleader=" "
