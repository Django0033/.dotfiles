require("lsp-format").setup {}
require "lspconfig".pyright.setup { on_attach = require "lsp-format".on_attach }
-- require "lspconfig".sumneko_lua.setup { on_attach = require "lsp-format".on_attach }
