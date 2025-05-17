return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				always_show_bufferline = true,
				separator_style = "slant", -- Görsel uyum için
			},
			highlights = {
				fill = {
					bg = "none", -- Transparan arka plan
				},
				background = {
					bg = "none",
				},
				tab = {
					bg = "none",
				},
				tab_selected = {
					bg = "none",
				},
				buffer = {
					bg = "none",
				},
				buffer_visible = {
					bg = "none",
				},
				buffer_selected = {
					bg = "none",
                    fg = "#61AFEF",
					bold = true,
					italic = false,
				},
				separator = {
					bg = "none",
				},
				separator_selected = {
					bg = "none",
				},
				indicator_selected = {
					bg = "none",
				},
				modified = {
					bg = "none",
				},
				modified_selected = {
					bg = "none",
				},
			},
		})
	end,
}
