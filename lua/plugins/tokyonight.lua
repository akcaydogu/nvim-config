return {
	"folke/tokyonight.nvim",
	lazy = false,
	name = "tokyonight",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			transparent = true, -- Transparan arka planı aktifleştir
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
