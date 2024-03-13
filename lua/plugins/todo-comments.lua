return {
	{
		"folke/todo-comments.nvim",
		event = {
			"BufNewFile",
			"BufRead",
		},
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
