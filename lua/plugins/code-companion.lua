return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"j-hui/fidget.nvim",
	},
	opts = function(_, opts)
		local base_opts = {
			opts = {
				language = "Japanese",
			},
			display = {
				chat = {
					auto_scroll = false,
					show_header_separator = true,
				},
			},
			strategies = {
				chat = {
					roles = {
						llm = function(adapter)
							return "  CodeCompanion (" .. adapter.formatted_name .. ")"
						end,
						user = "  Me",
					},
				},
			},
		}
		local env_opts = require("envs.code-companion").opts

		return vim.tbl_deep_extend("force", opts, base_opts, env_opts)
	end,
	keys = {
		{
			"<Space>cg",
			":CodeCompanion<CR>",
			mode = { "n", "v" },
			silent = true,
		},
		{
			"<Space>cc",
			":CodeCompanionChat<CR>",
			mode = { "n", "v" },
			silent = true,
		},
		{
			"<Space>ca",
			":CodeCompanionAction<CR>",
			mode = { "n", "v" },
			silent = true,
		},
	},
	init = function()
		require("functions.codecompanion.fidget-spinner"):init()
	end,
}
