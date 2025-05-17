return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "catppuccin"
	end,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},
	integrations = {
		bufferline = false,
	},
}
