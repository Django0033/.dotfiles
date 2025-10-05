return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,

    opt = {
        ensure_installed = {
            'css',
            'gitignore',
            'graphql',
            'http',
            'javascript',
            'json',
            'lua',
            'markdown',
            'markdown_inline',
            'python',
            'scss',
            'sql',
            'typescript',
            'vim',
        },

        sync_install = true,

        highlight = {
            enable = true,
        },
        query_linter = {
            enable = true,
            use_virtual_text = true,
            lint_events = {'BufWrite', 'CursorHold'},
        },
    },
}
