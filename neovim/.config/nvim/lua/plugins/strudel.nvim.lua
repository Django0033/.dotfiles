-- Plugin: gruvw/strudel.nvim
-- Installed via store.nvim

return {
	"gruvw/strudel.nvim",
	build = "npm install",
	config = function()
		require("strudel").setup({
			update_on_save = true,
		})
	end,
}