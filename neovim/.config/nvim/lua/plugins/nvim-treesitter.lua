return {
    {
        'nvim-treesitter/nvim-treesitter',
        opt = {
            ensure_installed = {
                'javascript',
                'typescript',
                'css',
                'gitignore',
                'graphql',
                'http',
                'json',
                'scss',
                'sql',
                'vim',
                'lua',
                'markdown',
                'markdown_inline',
            },
            highlight = {
                enable = true,
            },
            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = {'BufWrite', 'CursorHold'},
            },
        },
    },
}
