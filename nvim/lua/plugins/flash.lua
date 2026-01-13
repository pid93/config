return {
	"smoka7/hop.nvim",
	keys={
		{ "<leader>h", "<cmd>HopWord<CR>" }
	},
	config = function() 
		require("hop").setup()
	end
}
