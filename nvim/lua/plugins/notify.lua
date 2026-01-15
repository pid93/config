return {
	"rcarriga/nvim-notify",
	lazy = false,
	opts = {
		-- Animation style
		stages = "fade_in_slide_out",
		-- Default timeout for notifications
		timeout = 3000,
		-- Max width/height
		max_width = math.floor(vim.o.columns * 0.75),
		max_height = math.floor(vim.o.lines * 0.75),
		-- Background color (must be a hex value or highlight group)
		background_colour = "#000000",
		-- Where to show the notification (top_down = false shows from bottom)
		top_down = true,
	},
	config = function()
		local notify = require("notify")
		notify.setup(opts)
		vim.notify = notify
	end,
}
