return {
    "xiyaowong/transparent.nvim",
    lazy = false, -- Important: do not lazy-load this plugin
    config = function()
    require("transparent").setup({
        -- You can optionally configure groups to clear, but the default includes 'Normal' which is what we need for transparency.
        groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Special",
        "Underlined",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "String",
        "Number",
        "Boolean",
        "Float",
        "Error",
        "Todo",
        },
        extra_groups = {}, -- Add any extra groups if you are using a specific theme like NeoTree
        exclude_groups = {},
    })
    end,
}
