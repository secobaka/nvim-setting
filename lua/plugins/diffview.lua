return {
	{
		"sindrets/diffview.nvim",
		event = {
			"VeryLazy",
		},
		opts = {},
		keys = {
			{ "<leader>dv", "<cmd>DiffviewOpen HEAD~1<cr>", mode = { "n", "v" }, desc = "Open duff view" },
			{ "<leader>dh", "<cmd>DiffviewFileHistory %<cr>", mode = { "n", "v" }, desc = "Open diff file history" },
		},
	},
}
