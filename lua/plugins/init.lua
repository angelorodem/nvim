-- Load lspconfig here for rustaceanvim config
local nvlsp = require "nvchad.configs.lspconfig"
return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    lazy = false,
    opts = function()
      require("copilot_cmp").setup()
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
        "codelldb",
        "biome",
        "gopls",
        "tsserver",
        "eslint",
      },
    },
  },
  -- needs cargo install ast-grep or npm install -g ast-grep
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "lua_ls",
        -- "rust_analyzer", -- Disabled because of rustaceanvim
        "dockerls",
        "gopls",
        "biome",
        "bufls",
        "tsserver",
        "eslint",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "rust",
        "go",
        "c_sharp",
        "dart",
        "dockerfile",
        "gitignore",
        "gitcommit",
        "javascript",
        "json",
        "powershell",
        "bash",
        "make",
        "python",
        "proto",
        "toml",
        "tsx",
        "yaml",
      },
      auto_install = true,
      highlight = { enable = true },
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = 1000,
    },
  },
  {
    "smoka7/hop.nvim",
    opts = {
      multi_windows = true,
      keys = "htnsueoaidgcrlypmbkjvx:",
      uppercase_labels = true,
    },
    keys = {
      {
        "<leader>fj",
        function()
          require("hop").hint_words()
        end,
        mode = { "n", "x", "o" },
      },
    },
  },
  { "nvim-lua/plenary.nvim" },
  { "stevearc/dressing.nvim" },
  -- Dart/Flutter
  {
    "akinsho/flutter-tools.nvim",
    -- lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
  -- Rust
  { "ludovicchabant/vim-gutentags", ft = "rust" },
  { "preservim/tagbar", ft = "rust" },
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function(_, _)
      vim.g.rustaceanvim = {
        server = {
          on_attach = nvlsp.on_attach,
          default_settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
                allFeatures = true,
              },
              filetypes = { "rust" },
              diagnostics = {
                enable = true,
                enableExperimental = true,
              },
              cargo = {
                allFeatures = true,
              },
              inlayHints = {
                chainingHints = true,
                typeHints = true,
                smallerHints = true,
                parameterHints = true,
                maxLength = 32,
              },
            },
          },
        },
      }
    end,
  },
  "mfussenegger/nvim-dap",
  { "nvim-neotest/nvim-nio" },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/vim-vsnip" },
  {
    "hrsh7th/nvim-cmp",
    config = function(_, opts)
      table.insert(opts.sources, { name = "copilot", group_index = 0 })
      table.insert(opts.sources, { name = "crates" })
      require("cmp").setup(opts)
    end,
  },
}
