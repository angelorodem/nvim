local nvlsp = require "nvchad.configs.lspconfig"

local options = {
  server = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  },
}

return options
