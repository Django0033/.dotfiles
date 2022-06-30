-- require'lspconfig'.pyright.setup{}

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

local servers = {'pyright', 'sumneko_lua'}

-- for _, server in pairs(servers) do
--     require('lspconfig')['server'].setup{
--         on_attach = on_attach,
--         flags = lsp_flags,
--     }
-- end

require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig')['sumneko_lua'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
