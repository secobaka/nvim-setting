return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = {
			"BufNewFile",
			"BufRead",
		},
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"html",
					"lua",
					"markdown",
					"vim",
					"vimdoc",
				},
				auto_install = true,
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
