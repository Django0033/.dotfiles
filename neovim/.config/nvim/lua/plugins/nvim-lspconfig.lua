return {
    'neovim/nvim-lspconfig',
    lazy = false,
    dependencies = {
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
        {'mason-org/mason.nvim', opts = {}},
        {'mason-org/mason-lspconfig.nvim', opts = {}},
        'WhoIsSethDaniel/mason-tool-installer.nvim',

        -- Useful status updates for LSP
        {'j-hui/fidget.nvim', opts = {}},

        -- Allows extra capabilities provided by blink.cmp
        -- 'saghen/blink.cmp',
    },
    -- opts = {}
    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        vim.lsp.enable 'lua_ls'
        vim.lsp.enable 'marksman'
        vim.lsp.enable 'cssls'
        vim.lsp.config('lua_ls', {capabilities = capabilities})
        vim.lsp.config('marksman', {capabilities = capabilities})
        vim.lsp.config('cssls', {capabilities = capabilities})
    end,
}
