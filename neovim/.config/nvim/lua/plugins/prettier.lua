return {
    'MunifTanjim/prettier.nvim',
    dependencies = {
        'neovim/nvim-lspconfig'
    },

    opts = {
        bin = 'prettier',

        filetypes = {
            'css',
            'graphql',
            'html',
            'javascript',
            'javascriptreact',
            'json',
            'less',
            'lua',
            'markdown',
            'scss',
            'toml',
            'typescript',
            'typescriptreact',
            'yaml',
        }
    },

    keys = {
        {'<leader>f', '<cmd>Prettier<cr>', desc = 'Prettier'}
    }
}
