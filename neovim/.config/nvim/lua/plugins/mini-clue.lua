return {
    "nvim-mini/mini.clue",
    version = false,

    opts = {},

    config = function()
        require("mini.clue").setup({
            triggers = {
                { mode = "n", keys = "<Leader>" },
                { mode = "x", keys = "<Leader>" },
                { mode = "n", keys = "g" },
                { mode = "x", keys = "g" },
                { mode = "n", keys = "s" },
                { mode = "x", keys = "s" },
                { mode = "n", keys = "=" },
                { mode = "x", keys = "=" },

                -- `[` and `]` keys
                { mode = "n", keys = "[" },
                { mode = "n", keys = "]" },

                -- Marks
                { mode = "n", keys = "'" },
                { mode = "n", keys = "`" },
                { mode = "x", keys = "'" },
                { mode = "x", keys = "`" },

                -- Registers
                { mode = "n", keys = '"' },
                { mode = "x", keys = '"' },
                { mode = "i", keys = "<C-r>" },
                { mode = "c", keys = "<C-r>" },

                -- Window commands
                { mode = "n", keys = "<C-w>" },

                -- `z` key
                { mode = "n", keys = "z" },
                { mode = "x", keys = "z" },
            },

            clues = {
                -- miniclue.gen_clues.square_brackets(),
                -- miniclue.gen_clues.builtin_completion(),
                -- miniclue.gen_clues.g(),
                -- miniclue.gen_clues.marks(),
                -- miniclue.gen_clues.registers(),
                -- miniclue.gen_clues.windows(),
                -- miniclue.gen_clues.z(),
                { mode = "n", keys = "<Leader>b",  desc = "+Buffer" },
                { mode = "n", keys = "<Leader>d",  desc = "+Dice" },
                { mode = "n", keys = "<Leader>g",  desc = "+Git" },
                { mode = "n", keys = "<Leader>gd", desc = "+Diff" },
                { mode = "n", keys = "<Leader>l",  desc = "+Lazy" },
                { mode = "n", keys = "<Leader>m",  desc = "+Mini" },
                { mode = "n", keys = "<Leader>o",  desc = "+Obsidian" },
                { mode = "n", keys = "<Leader>p",  desc = "+Pick" },
                { mode = "n", keys = "<Leader>r",  desc = "+Reload" },
                { mode = "n", keys = "<Leader>t",  desc = "+Tips" },
                { mode = "n", keys = "<Leader>v",  desc = "+Visit" },
            },
        })
    end,
}
