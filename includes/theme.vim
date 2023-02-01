colorscheme github_light

if (has("termguicolors"))
  "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable

highlight Comment gui=italic cterm=italic

lua <<EOF
require("github-theme").setup({
    transparent = true
})
EOF
