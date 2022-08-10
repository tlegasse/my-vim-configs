" Theme settings
syntax on
set t_Co=256
set cursorline
colorscheme purify
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
highlight iCursor guifg=white guibg=steelblue
highlight clear SignColumn
