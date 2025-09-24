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

        -- daily_notes = {
        --     template = 'new_note',
        -- },

        templates = {
            folder = 'templates'
        },

        --@param title string|?
        --@return string
        note_id_func = function (title)
            local suffix = ""
            if title ~= nil then
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65, 90))
                end
            end
            return tostring(os.time()) .. "-" .. suffix
        end

    },

    keys = {
        {'<leader>od', function()
            vim.cmd '!rm %'
            vim.cmd 'bdel'
        end, desc = 'Obsidian Delete'},

        {'<leader>oa', function() vim.cmd 'ObsidianTags' end, desc = 'Obsidian Tags'},
        {'<leader>on', function() vim.cmd 'ObsidianNew' end, desc = 'Obsidian New Note'},
        {'<leader>oq', function() vim.cmd 'ObsidianQuickSwitch' end, desc = 'Obsidian Quick Switch'},
        {'<leader>or', function() vim.cmd 'ObsidianRename' end, desc = 'Obsidian Rename'},
        {'<leader>os', function() vim.cmd 'ObsidianSearch' end, desc = 'Obsidian Search'},
        {'<leader>ot', function() vim.cmd 'ObsidianTemplate' end, desc = 'Obsidian Template'},
        {'<leader>ow', function() vim.cmd 'ObsidianWorkspace' end, desc = 'Obsidian Workspace'},
    },
}
