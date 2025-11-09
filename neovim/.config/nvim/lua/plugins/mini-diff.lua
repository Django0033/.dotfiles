return {
    "nvim-mini/mini.diff",
    version = false,
    lazy = false,

    opts = {},

    keys = {
        { "<leader>gdn", '<cmd>lua MiniDiff.config.view.style = "number"; vim.cmd("edit")<CR>', desc = "Diff Numbers" },
        { "<leader>gdo", "<cmd>lua MiniDiff.toggle_overlay()<CR>",                              desc = "Diff Overlay" },
        { "<leader>gds", '<cmd>lua MiniDiff.config.view.style = "sign"; vim.cmd("edit")<CR>',   desc = "Diff Signs" },
    },
}
