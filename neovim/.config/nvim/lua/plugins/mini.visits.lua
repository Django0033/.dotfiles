-- Plugin: nvim-mini/mini.visits
-- Installed via store.nvim

return {
    "nvim-mini/mini.visits",
    version = false,

    opts = {},

    config = function ()
        require('mini.visits').setup()
        local make_select_path = function(select_global, recency_weight)
            local visits = require('mini.visits')
            local sort = visits.gen_sort.default({ recency_weight = recency_weight })
            local select_opts = { sort = sort }
            return function()
            local cwd = select_global and '' or vim.fn.getcwd()
            visits.select_path(cwd, select_opts)
            end
        end

        local map = function(lhs, desc, ...)
            vim.keymap.set('n', lhs, make_select_path(...), { desc = desc })
        end

        -- Adjust LHS and description to your liking
        -- map('<Leader>vr', 'Visit recent (all)',   true,  1)
        map('<Leader>vr', 'Visit recent (cwd)',   false, 1)
        -- map('<Leader>vy', 'Visit frecent (all)',  true,  0.5)
        -- map('<Leader>vY', 'Visit frecent (cwd)',  false, 0.5)
        -- map('<Leader>vf', 'Visit frequent (all)', true,  0)
        map('<Leader>vf', 'Visit frequent (cwd)', false, 0)

        local map_vis = function(keys, call, desc)
            local rhs = '<Cmd>lua MiniVisits.' .. call .. '<CR>'
            vim.keymap.set('n', '<Leader>' .. keys, rhs, { desc = desc })
        end

        map_vis('va', 'add_label()',          'Visit Add label')
        map_vis('ve', 'remove_label()',       'Visit Remove label')
        -- map_vis('vl', 'select_label("", "")', 'Visit Select label (all)')
        map_vis('vl', 'select_label()',       'Visit Select label (cwd)')
    end
}
