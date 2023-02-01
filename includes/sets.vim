" Sets
set encoding=utf-8
set expandtab
" set guifont=BitstreamVeraSansMono_NF:h13
set nohlsearch
set number relativenumber
set shiftwidth=4
set tabstop=4
set updatetime=300
set timeoutlen=500
let g:sneak#label = 1
set scrolloff=8
set cmdheight=1
set mouse=a
" set shell=powershell
set shellslash
filetype plugin indent on
set nowrap
set ignorecase
set smartcase

let g:loaded_perl_provider = 0
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:workspace_autocreate = 1
let g:blamer_enabled = 1
let g:python3_host_prog = '/usr/bin/python3'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-s>s"
let g:UltiSnipsJumpBackwardTrigger="<c-s>a"
set clipboard=unnamedplus

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['liquid'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ttf'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['woff'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['woff2'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['svg'] = '縉'

set nocursorline

let g:vimspector_enable_mappings='HUMAN'

set signcolumn=yes

"highlight Cursor guifg=white guibg=red
"highlight iCursor guifg=white guibg=red
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
