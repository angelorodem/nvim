-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "rust_analyzer",
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
