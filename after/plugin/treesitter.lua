require('nvim-treesitter.configs').setup({
  ensure_installed = { "javascript", "typescript", "c", "lua", "rust", "ninja", "python", "svelte", "html"},
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
  }
})
