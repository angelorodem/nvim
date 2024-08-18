-- Code formatter
local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    go = { "goimports", "gofmt" },
    --    ["*"] = { "codespell" },
  },
  default_format_opts = {
    lsp_format = "fallback",
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1500,
    lsp_fallback = true,
  },
  notify_on_error = true,
  notify_no_formatters = true,
}

return options
