return {
	"nvim-mini/mini.nvim",
	version = "*",
	config = function()
		require("mini.comment").setup({
			mappings = {
				comment_line = "<leader>c<leader>",
				comment_visual = "<leader>c<leader>",
			},
		})
	end,
}
