return {
	"stevearc/oil.nvim",
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	keys = {
		{ "<C-e>", "<cmd>Oil<CR>" },
	},
	config = function()
		require("oil").setup({
			skip_confirm_for_simple_edits = true,
			columns = {},
			watch_for_changes = true,
			show_hidden = true,
		})
	end,
}
