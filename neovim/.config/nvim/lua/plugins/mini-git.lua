return {
    'nvim-mini/mini-git',
    version = false,
    lazy = false,

    opts = {},

    config = function ()
        local ok, mini_git = pcall(require,'mini.git')
        mini_git.setup()
    end,

    keys = {
        {'<leader>gs', '<cmd>horizontal Git status<CR>', desc = 'Git Status'},
        {'<leader>ga', '<cmd>Git add %<CR>', desc = 'Git Add'},
        {'<leader>gc', '<cmd>horizontal Git commit<CR>', desc = 'Git Commit'},
        {'<leader>gP', '<cmd>Git push<CR>', desc = 'Git Push'},
        {'<leader>gh', '<cmd>vertical lua MiniGit.show_at_cursor()<CR>', desc = 'Git Show'},
    }
}
