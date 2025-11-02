return {
    -- {
    --     'Mofiqul/dracula.nvim',
    --     config = function ()
    --         -- vim.cmd.colorscheme 'dracula'
    --     end
    -- },

    {
        'dracula/vim',
        name = 'dracula',
        config = function ()
            -- vim.cmd.colorscheme 'dracula'
        end
    },

    {
        'folke/tokyonight.nvim',
        config = function ()
            vim.cmd.colorscheme 'tokyonight'
            -- vim.cmd.colorscheme 'tokyonight-night'
        end
    },

    {
        'catppuccin/nvim',
        name = 'catppuccin',
        opts = {
            auto_integrations = true,
        },
        config = function ()
            -- vim.cmd.colorscheme 'catppuccin'
        end
    },

    {
        'rebelot/kanagawa.nvim',
        config = function ()
            -- vim.cmd.colorscheme 'kanagawa'
        end
    },

    {
        'EdenEast/nightfox.nvim',
        config = function ()
            -- vim.cmd.colorscheme 'carbonfox'
        end
    },

    {
        'navarasu/onedark.nvim',
        config = function ()
            require('onedark').setup {
                style = 'deep',
            }
            -- vim.cmd.colorscheme 'onedark'
        end
    },

    {
        'maxmx03/fluoromachine.nvim',
        opts = {
            glow = true,
        },
        config = function()
            -- vim.cmd.colorscheme 'fluoromachine'
        end,
    },

    {
        'nyngwang/nvimgelion',
        config = function ()
            -- vim.cmd.colorscheme 'nvimgelion'
        end,
    },
}
