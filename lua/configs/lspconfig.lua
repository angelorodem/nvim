-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  --  "rust_analyzer",
  "ast_grep",
  "dockerls",
  "gopls",
  "harper_ls",
  "biome",
  "bufls",
  "tsserver",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- lspconfig.rust_analyzer.setup {
--   settings = {
--     ["rust_analyzer"] = {
--       diagnostics = {
--         enable = false,
--       },
--       cargo = {
--         allFeatures = true,
--       },
--       checkOnSave = {
--         allFeatures = true,
--         command = "clippy",
--       },
--     },
--   },
--   capabilities = {
--     experimental = {
--       serverStatusNotification = true,
--     },
--   },
-- }

lspconfig.harper_ls.setup {
  settings = {
    ["harper-ls"] = {
      linters = {
        spell_check = false,
        spelled_numbers = false,
        an_a = true,
        sentence_capitalization = false,
        unclosed_quotes = true,
        wrong_quotes = false,
        long_sentences = true,
        repeated_words = true,
        spaces = true,
        matcher = true,
        correct_number_suffix = true,
        number_suffix_capitalization = true,
        multiple_sequential_pronouns = true,
      },
    },
  },
}
