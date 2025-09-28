return {
    'nvim-mini/mini.tabline',
    dependencies = {
        {'nvim-mini/mini.icons', opts = {}}
    },
    version = false,
    opts = {
        function(buf_id, label)
            local suffix = vim.bo[buf_id].modified and '+' or ''
            return MiniTabline.default_format(buf_id,label) .. suffix
        end,
    },
}
