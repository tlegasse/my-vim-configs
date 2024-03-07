require('nvim-treesitter.configs').setup({
  ensure_installed = { "javascript", "typescript", "c", "lua", "rust", "python", "svelte", "html"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  matchup = {
    enable = true,
  },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.liquid = {
  install_info = {
    url = "~/.config/nvim/ts-grammar/tree-sitter-liquid", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = true, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
}
