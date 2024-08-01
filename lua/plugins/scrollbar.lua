return {
	{
		"petertriho/nvim-scrollbar",
		event = {
			"BufNewFile",
			"BufRead",
		},
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"kevinhwang91/nvim-hlslens",
		},
		opts = function()
			require("scrollbar").setup()
			require("scrollbar.handlers.gitsigns").setup()

			require("scrollbar.handlers.search").setup()
		end,
	},
}
