lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}

EOF
"local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
"parser_config.liquid = {
  "install_info = {
    "url = "https://github.com/Shopify/tree-sitter-liquid-ii", -- local path or git repo
    "branch = "main",
    "files = {"src/parser.c"},
    "requires_generate_from_grammar = false,
  "},
  "filetype = "liquid"
"}

let b:ale_linters = ['eslint', 'pylint']

let g:syntastic_ignore_files = ['.*\.wiki']
autocmd BufEnter *.wiki ALEDisable
