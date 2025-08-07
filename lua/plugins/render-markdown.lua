return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.icons",
	},
	ft = { "markdown", "markdown.mdx", "codecompanion" },
	opts = {
		file_types = { "markdown", "codecompanion" },
	},
}
