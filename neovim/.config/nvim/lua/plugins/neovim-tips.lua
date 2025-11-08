-- Plugin: saxon1964/neovim-tips
-- Installed via store.nvim

return {
    "saxon1964/neovim-tips",
    version = "*", -- Only update on tagged releases
    lazy = true, -- Load only when keybinds are triggered
    dependencies = {
        "MunifTanjim/nui.nvim",
        -- OPTIONAL: Choose your preferred markdown renderer (or omit for raw markdown)
        "MeanderingProgrammer/render-markdown.nvim" -- Clean rendering
        -- OR: "OXY2DEV/markview.nvim", -- Rich rendering with advanced features
    },
    opts = {
        -- OPTIONAL: Daily tip mode (default: 1)
        -- Note: Set to 0 when using lazy = true, or use Option 2 below
        daily_tip = 0, -- 0 = off, 1 = once per day, 2 = every startup
        -- Other optional settings...
        bookmark_symbol = " "
    },
    keys = {
        {
            "<leader>to",
            ":NeovimTips<CR>",
            desc = "Tips Open"
        },
        {
            "<leader>tr",
            ":NeovimTipsRandom<CR>",
            desc = "Tips Random"
        },
        {
            "<leader>te",
            ":NeovimTipsEdit<CR>",
            desc = "Tips Edit"
        },
        {
            "<leader>ta",
            ":NeovimTipsAdd<CR>",
            desc = "Tips Add"
        },
        {
            "<leader>tp",
            ":NeovimTipsPdf<CR>",
            desc = "Tips PDF"
        }
    }
}
