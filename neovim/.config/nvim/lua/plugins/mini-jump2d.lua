return {
    'echasnovski/mini.jump2d',
    version = false,
    opts = {
        labels = 'aoeuisnthd',
    },
    keys = {
        {'<leader>j', function () vim.cmd 'lua MiniJump2d.start(MiniJump2d.builtin_opts.line_start)' end, desc = 'Jump2d'},
        {'<leader>j', function () vim.cmd 'lua MiniJump2d.start(MiniJump2d.builtin_opts.line_start)' end, mode = 'v', desc = 'Jump2d'}
    }
}
