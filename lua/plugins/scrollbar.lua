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
			local colors = require("tokyonight.colors").setup()
			require("scrollbar").setup({
				handle = {
					color = colors.bg_highlight,
				},
				marks = {
					Search = { color = colors.orange },
					Error = { color = colors.error },
					Warn = { color = colors.warning },
					Info = { color = colors.info },
					Hint = { color = colors.hint },
					Misc = { color = colors.purple },
				},
			})

			require("gitsigns").setup({
				signs = {
					add = {
						hl = "GitSignsAdd",
						text = " ▎",
						numhl = "GitSignsAddNr",
						linehl = "GitSignsAddLn",
					},
					change = {
						hl = "GitSignsChange",
						text = " ▎",
						numhl = "GitSignsChangeNr",
						linehl = "GitSignsChangeLn",
					},
					delete = {
						hl = "GitSignsDelete",
						text = " ",
						numhl = "GitSignsDeleteNr",
						linehl = "GitSignsDeleteLn",
					},
					topdelete = {
						hl = "GitSignsDelete",
						text = " ",
						numhl = "GitSignsDeleteNr",
						linehl = "GitSignsDeleteLn",
					},
					changedelete = {
						hl = "GitSignsChange",
						text = "▎ ",
						numhl = "GitSignsChangeNr",
						linehl = "GitSignsChangeLn",
					},
				},
			})
			require("scrollbar.handlers.gitsigns").setup()

			require("scrollbar.handlers.search").setup()
		end,
	},
}
