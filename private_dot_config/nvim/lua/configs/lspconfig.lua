require("nvchad.configs.lspconfig").defaults()

local servers = { "html",
                  "cssls",
                  "clojure_lsp",
                  "ts_ls"}
vim.lsp.enable(servers)

-- vim.lsp.enable() auto-wires most LSPs using lspconfig.<server>.setup({ default options }).
-- Then your manual setup() call overrides the earlier one — because Neovim re-calls setup() and replaces it.

-- read :h vim.lsp.config for changing options of lsp servers 
