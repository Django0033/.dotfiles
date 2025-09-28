return {
	'echasnovski/mini.clue',
	version = false,
	opts = {
		triggers = {
			{mode = 'n', keys = '<Leader>'},
			{mode = 'x', keys = '<Leader>'},
			{mode = 'n', keys = 'g'},
			{mode = 'x', keys = 'g'},
			{mode = 'n', keys = 's'},
			{mode = 'x', keys = 's'},
			{mode = 'n', keys = '='},
			{mode = 'x', keys = '='},
		},
		clues = {
			{mode = 'n', keys = '<Leader>b', desc = '+Buffer'},
			{mode = 'n', keys = '<Leader>l', desc = '+Lazy'},
			{mode = 'n', keys = '<Leader>m', desc = '+Mini'},
			{mode = 'n', keys = '<Leader>o', desc = '+Obsidian'},
			{mode = 'n', keys = '<Leader>p', desc = '+Pick'},
			{mode = 'n', keys = '<Leader>r', desc = '+Reload'},
			-- {mode = 'n', keys = '<Leader>t', desc = '+Telescope'},
		},
	},
}
