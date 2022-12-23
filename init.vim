" Plugins/ General
runtime includes/plugins.vim
runtime includes/theme.vim
runtime includes/mapping.vim

" Plugin specific settings
runtime includes/nerdtree.vim
runtime includes/airline.vim
runtime includes/coc.vim
runtime includes/ts.vim

runtime includes/misc.vim
runtime includes/sets.vim


let b:ale_linters = ['eslint', 'pylint']

highlight Comment gui=italic cterm=italic
lua require("harpoon.init").setup({mark_branch = true})
