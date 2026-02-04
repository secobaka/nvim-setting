return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>fb", ":Telescope buffers<CR>" },
		},
		opts = function()
			local actions = require("telescope.actions")
			local open_selected = function(prompt_bufnr)
				local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
				local selected = picker:get_multi_selection()
				if vim.tbl_isempty(selected) then
					actions.select_default(prompt_bufnr)
				else
					actions.close(prompt_bufnr)
					for _, file in pairs(selected) do
						if file.path then
							vim.cmd("edit" .. (file.lnum and " +" .. file.lnum or "") .. " " .. file.path)
						end
					end
				end
			end
			local open_all = function(prompt_bufnr)
				actions.select_all(prompt_bufnr)
				open_selected(prompt_bufnr)
			end
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						".git/",
						".cache/",
						".aws-sam/",
						"vendor/",
						"node_modules/",
					},
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"-uu",
						"--hidden",
					},
					sorting_strategy = "ascending",
					layout_config = {
						horizontal = { prompt_position = "top", preview_width = 0.55 },
						vertical = { mirror = false },
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},
					mappings = {
						i = {
							["<C-J>"] = actions.move_selection_next,
							["<C-K>"] = actions.move_selection_previous,
							["<CR>"] = open_selected,
							["<C-CR>"] = open_all,
						},
						n = {
							q = actions.close,
							["<ESC>"] = actions.close,
							["<CR>"] = open_selected,
							["<C-CR>"] = open_all,
							["<C-D>"] = actions.delete_buffer,
						},
					},
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
			})
		end,
	},
}
