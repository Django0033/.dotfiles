return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    -- config = true,
    opts = { },
    config = function ()
        local ok, neorg = pcall(require,'neorg')

        neorg.setup({
            load = {
                ['core.defaults'] = {},
                ['core.keybinds'] = {
                    config = {
                        neorg_leader = ',',
                    },
                },
                ['core.concealer'] = {},
                ['core.dirman'] = {
                    config = {
                        workspaces = {
                            notes = '~/notes/'
                        },
                        default_workspaces = 'notes'
                    },
                },
            }
        })
    end
}
