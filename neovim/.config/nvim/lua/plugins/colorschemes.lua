return {
    {
        'Mofiqul/dracula.nvim',
        config = function ()
            -- vim.cmd.colorscheme 'dracula'
        end
    },

    {
        'folke/tokyonight.nvim',
        config = function ()
            -- vim.cmd.colorscheme 'tokyonight'
            -- vim.cmd.colorscheme 'tokyonight-night'
        end
    },

    {
        'maxmx03/fluoromachine.nvim',
        opts = {
            glow = true,
        },
        config = function()
            vim.cmd.colorscheme 'fluoromachine'
        end,
    },

    {
        'nyngwang/nvimgelion',
        config = function ()
            -- vim.cmd.colorscheme 'nvimgelion'
        end,
    },
}
