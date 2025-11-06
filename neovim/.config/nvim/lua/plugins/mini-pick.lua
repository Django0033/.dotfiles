return {
	'nvim-mini/mini.pick',
    lazy = false,
	version = false,

    dependencies = {
        {'nvim-mini/mini.icons', opts = {}},
        {'nvim-mini/mini.extra', version = false, opts = {}},
    },

	opts = {},

    config = function ()
        require('mini.pick').setup()
    end,

	keys = {
		{ '<leader>pb', function () vim.cmd 'Pick buffers' end, desc = 'Pick Buffers'},
		{ '<leader>pc', function () vim.cmd 'lua MiniExtra.pickers.colorschemes()' end, desc = 'Pick Colorschemes'},
		{ '<leader>pd', function () vim.cmd 'lua MiniExtra.pickers.diagnostic()' end, desc = 'Pick Diagnostic'},
		{ '<leader>pf', function () vim.cmd 'Pick files' end, desc = 'Pick Files'},
		{ '<leader>pg', function () vim.cmd 'Pick grep_live' end, desc = 'Pick Grep'},
		{ '<leader>ph', function () vim.cmd 'Pick help' end, desc = 'Pick Help'},
		{ '<leader>pk', function () vim.cmd 'lua MiniExtra.pickers.keymaps()' end, desc = 'Pick Keymaps'},
        { '<leader>po', function () vim.cmd 'lua MiniExtra.pickers.oldfiles()' end, desc = 'Pick Old Files'},
        { '<leader>ps', function () vim.cmd 'lua MiniExtra.pickers.spellsuggest()' end, desc = 'Pick Spell Suggestions'},
	},
}
