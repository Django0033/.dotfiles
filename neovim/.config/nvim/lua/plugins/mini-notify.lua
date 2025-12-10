return {
	"nvim-mini/mini.notify",
	version = false,
	lazy = false,

	opts = {},

	keys = {
		{ "<leader>in", "<cmd>lua MiniNotify.show_history()<CR>", desc = "Mini Notify" },
	},
}
