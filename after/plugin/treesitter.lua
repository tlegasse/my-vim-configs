local load_config = function()
  require("nvim-treesitter.configs").setup({
    context_commentstring = {
      enable = true,
    },
    ensure_installed = "svelte",
    highlight = {
      enable = true,
    },
  })
end

load_config()
