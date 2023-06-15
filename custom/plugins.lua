local plugins = {
  {
    "wuelnerdotexe/vim-astro",
    ft = "astro",
    config = function(_)
      vim.g.astro_typescript = "enable"
    end
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "vue-language-server",
        "svelte-language-server",
        "tailwindcss-language-server",
        "gopls"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      return require "custom.configs.comment"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function ()
      require("plugins.configs.treesitter")
      require("custom.configs.treesitter")
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    opts = {}
  },
  {
    "windwp/nvim-autopairs",
    opts = {}
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  }
}

return plugins
