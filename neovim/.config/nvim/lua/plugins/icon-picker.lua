return {
    'ziontee113/icon-picker.nvim',

    opts = {
        disable_legacy_commands = true,
    },

    keys = {
        {'<leader>pi', function() vim.cmd 'IconPickerNormal' end, desc = 'Pick Icon'}
    }
}
