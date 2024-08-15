return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

{
   "williamboman/mason.nvim",
   opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "html-lsp",
      "css-lsp",
      "prettier",
      "rust_analyzer",
      "harper_ls",
      "biome",
      "gopls"
    },
   },
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "typescript",
        "rust", "go", "c_sharp",
        "dart", "dockerfile", "gitignore",
        "gitcommit", "javascript", "json",
        "powershell", "bash", "make", "python",
        "proto", "toml", "tsx", "yaml"
  		},
  	},
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    }
  },
}
