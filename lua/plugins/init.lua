return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  { "neoclide/coc.nvim", lazy = false },
  -- These are some examples, uncomment them if you want to see them work!
  -- { "github/copilot.vim", lazy = false },
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
        "harper_ls",
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
        "rust_analyzer",
        "ast_grep",
        "dockerls",
        "gopls",
        "harper_ls",
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
  -- Dart/Flutter
  { "nvim-lua/plenary.nvim" },
  { "stevearc/dressing.nvim" },
  {
    "akinsho/flutter-tools.nvim",
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
    "simrat39/rust-tools.nvim",
    ft = "rust",
  },
  "mfussenegger/nvim-dap",
  { "nvim-neotest/nvim-nio" },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        -- Copilot Source
        { name = "copilot", group_index = 2 },
        -- Other Sources
        { name = "nvim_lsp", group_index = 2 },
        { name = "path", group_index = 2 },
        { name = "luasnip", group_index = 2 },
        { name = "crates" },
      },
    },
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/vim-vsnip" },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    config = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
