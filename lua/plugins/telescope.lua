return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = {
			{ "<leader>ff", ":Telescope find_files<CR>" },
			{ "<leader>fw", ":Telescope live_grep<CR>" },
			{ "<leader>fb", ":Telescope buffers<CR>" },
			{ "<leader>fr", ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
		},
		opts = function()
			require("telescope").setup({
				defaults = {
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"-uu",
					},
				},
				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
					file_browser = {
						theme = "ivy",
						hijack_netrw = true,
					},
				},
			})
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("file_browser")
		end,
	},
}
