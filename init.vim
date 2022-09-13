" Plugins
runtime includes/plugins.vim
runtime includes/sets.vim

" Plugin specific settings
runtime includes/nerdtree.vim
runtime includes/airline.vim
runtime includes/fzf.vim
runtime includes/coc.vim

" General
runtime includes/theme.vim
runtime includes/mapping.vim

runtime includes/ts.vim
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }

execut 'hi NERDTreeFlags guifg=#5fff87'
