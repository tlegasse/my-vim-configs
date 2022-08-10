lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.liquid = {
  install_info = {
    url = "~/dev/treesitter/liquid/", -- local path or git repo
    files = {"src/parser.c"},
    requires_generate_from_grammar = false,
  },
  filetype = "liquid"
}
EOF
