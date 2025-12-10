return {
    -- {
    --     'Mofiqul/dracula.nvim',
    --     config = function ()
    --         -- vim.cmd.colorscheme 'dracula'
    --     end
    -- },

    {
        "dracula/vim",
        event = "VeryLazy",
        name = "dracula",
        config = function()
            -- vim.cmd.colorscheme 'dracula'
        end,
    },

    {
        "folke/tokyonight.nvim",
        event = "VeryLazy",
        config = function()
            vim.cmd.colorscheme("tokyonight")
            -- vim.cmd.colorscheme 'tokyonight-night'
        end,
    },

    {
        "catppuccin/nvim",
        event = "VeryLazy",
        name = "catppuccin",
        opts = {
            auto_integrations = true,
        },
        config = function()
            -- vim.cmd.colorscheme 'catppuccin'
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        event = "VeryLazy",
        config = function()
            -- vim.cmd.colorscheme 'kanagawa'
        end,
    },

    {
        "EdenEast/nightfox.nvim",
        event = "VeryLazy",
        config = function()
            -- vim.cmd.colorscheme 'carbonfox'
        end,
    },

    {
        "navarasu/onedark.nvim",
        event = "VeryLazy",
        config = function()
            require("onedark").setup({
                style = "deep",
            })
            -- vim.cmd.colorscheme 'onedark'
        end,
    },

    {
        "maxmx03/fluoromachine.nvim",
        event = "VeryLazy",
        opts = {
            glow = true,
        },
        config = function()
            -- vim.cmd.colorscheme 'fluoromachine'
        end,
    },

    {
        "nyngwang/nvimgelion",
        event = "VeryLazy",
        config = function()
            -- vim.cmd.colorscheme 'nvimgelion'
        end,
    },
}
