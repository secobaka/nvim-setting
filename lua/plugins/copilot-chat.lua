return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			"zbirenbaum/copilot.lua",
			"nvim-lua/plenary.nvim",
		},
		build = "make tiktoken",
		opts = {
			mappings = {
				submit_prompt = {
					normal = "<C-CR>",
					insert = "<C-CR>",
				},
				show_diff = {
					full_diff = true,
				},
			},
		},
	},
}
