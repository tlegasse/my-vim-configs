" Theme settings

"set t_Co=256

"hi Visual  guifg=#000000 guibg=#FFFF87 gui=none

set background=light
colorscheme PaperColor

if (has("termguicolors"))
  "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable

highlight Comment gui=italic cterm=italic
