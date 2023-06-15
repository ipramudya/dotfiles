require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true
  },
  ensure_installed = {
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "vue",
        "svelte"
  },
  context_commentstring = {
    enable = true,
  },
}
