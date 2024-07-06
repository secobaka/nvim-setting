return {
	{
		"lewis6991/gitsigns.nvim",
		event = {
			"BufNewFile",
			"BufRead",
		},
		opts = function()
			return {
				signs = {
					add = { text = "┃" },
					change = { text = "┃" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				on_attach = function(bufnr)
					local gitsigns = require("gitsigns")
					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end
					map("n", "<leader>bl", gitsigns.toggle_current_line_blame)
					map("n", "<leader>hd", gitsigns.diffthis)
				end,
			}
		end,
	},
}
