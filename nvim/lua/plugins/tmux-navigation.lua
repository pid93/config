return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		local nvim_tmux_nav = require("nvim-tmux-navigation")
		vim.keymap.set("n", "<M-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
		vim.keymap.set("n", "<M-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
		vim.keymap.set("n", "<M-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
		vim.keymap.set("n", "<M-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
	end,
}
