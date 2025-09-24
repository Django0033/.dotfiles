return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
        'debugloop/telescope-undo.nvim',
    },
    opts = {
        defaults = {
            layout_strategy = 'vertical',
            layout_config = {
                prompt_position = 'top',
                mirror = true,
            },
            sorting_strategy = 'ascending',
        },
        pickers = {
            colorscheme = {
                enable_preview = true,
            },
        },
    },
    config = function()
        require('telescope').load_extension('undo')
    end,
    keys = {
        {'<leader>tb', function() require('telescope.builtin').buffers() end, desc = 'Telescope Buffers'},
        {'<leader>tc', function() require('telescope.builtin').colorscheme() end, desc = 'Telescope Colorscheme'},
        {'<leader>td', function() require('telescope.builtin').diagnostics() end, desc = 'Telescope Diagnostics'},
        {'<leader>tf', function() require('telescope.builtin').find_files() end, desc = 'Telescope Files'},
        {'<leader>tg', function() require('telescope.builtin').live_grep() end, desc = 'Telescope Grep'},
        {'<leader>th', function() require('telescope.builtin').help_tags() end, desc = 'Telescope Help'},
        {'<leader>tk', function() require('telescope.builtin').keymaps() end, desc = 'Telescope Keymaps'},
        {'<leader>to', function() require('telescope.builtin').oldfiles() end, desc = 'Telescope Oldfiles'},
        {'<leader>tu', function() vim.cmd 'Telescope undo' end, desc = 'Telescope Undo'},
    },
}
