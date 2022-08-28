lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.liquid = {
  install_info = {
    url = "https://github.com/Shopify/tree-sitter-liquid-ii", -- local path or git repo
    branch = "main",
    files = {"src/parser.c"},
    requires_generate_from_grammar = false,
  },
  filetype = "liquid"
}
EOF
