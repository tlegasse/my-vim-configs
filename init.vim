" Plugins/ General
runtime includes/plugins.vim
runtime includes/theme.vim
runtime includes/mapping.vim

" Plugin specific settings
runtime includes/nerdtree.vim
runtime includes/airline.vim
runtime includes/coc.vim
"runtime includes/language_support.vim

runtime includes/misc.vim
runtime includes/copy_paste.vim
runtime includes/sets.vim

runtime includes/vim-prettier.vim

"runtime includes/netrw.vim

"let g:netrw_keepdir=0
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
cnoreabbrev Gl Flog
