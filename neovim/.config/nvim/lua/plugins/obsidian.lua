return {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = 'markdown',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },

    opts = {
        workspaces = {
            {
                name = 'zettelkasten',
                path = '~/Documents/zettelkasten',
            },

            {
                name = 'roleplay',
                path = '~/Sync/Roleplay',
            },
        },
        daily_notes = {
            template = 'new_note',
        },
    },

    keys = {
        {'<leader>on', function() vim.cmd 'ObsidianNew' end, desc = 'Obsidian New Note'},
        {'<leader>oq', function() vim.cmd 'ObsidianQuickSwitch' end, desc = 'Obsidian Quick Switch'},
        {'<leader>ow', function() vim.cmd 'ObsidianWorkspace' end, desc = 'Obsidian Workspace'},
        {'<leader>or', function() vim.cmd 'ObsidianRename' end, desc = 'Obsidian Rename'},
    },
}
