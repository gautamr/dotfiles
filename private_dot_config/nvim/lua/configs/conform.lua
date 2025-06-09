local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    --css = { "prettier" },
    --html = { "prettier" },
    clojure = { "cljfmt" },
    python = { "isort", "black" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
