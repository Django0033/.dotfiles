return {
    'nvim-mini/mini.jump2d',
    version = false,

    opts = {
        labels = 'aoeuisnthd',
    },

    keys = {
        {'<leader>j', function ()
            vim.cmd 'lua MiniJump2d.start({spotter = MiniJump2d.gen_spotter.pattern("^%s*%S","end")})'
        end, desc = 'Jump2d'},
        {'<leader>j', function ()
            vim.cmd 'lua MiniJump2d.start({spotter = MiniJump2d.gen_spotter.pattern("^%s*%S","end")})'
        end, mode = 'v', desc = 'Jump2d'}
    }
}
