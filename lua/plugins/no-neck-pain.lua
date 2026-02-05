return {
	--[[ "shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		require("no-neck-pain").setup({
			width = 150,
			autocmds = {
				enableOnVimEnter = true,
				enableOnTabEnter = true,
				reloadOnColorSchemeChange = true,
			},
		})
		vim.keymap.set("n", "<leader>z", "<cmd>NoNeckPain<CR>")
	end, ]]
}
