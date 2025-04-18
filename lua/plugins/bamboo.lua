return {
	"ribru17/bamboo.nvim",
	lazy = false,
	priotity = 1000,
	config = function()
		local config = require("bamboo")
		config.setup({
			transparent = true,
		})
		vim.cmd("colorscheme bamboo")
	end,
}
