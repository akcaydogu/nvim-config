return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local footer = function()
			local stats = require("lazy").stats()
			local total_plugins = stats.count
			local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
			local version = vim.version()
			local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

			return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
		end

		dashboard.section.header.val = {
			[[   █████████   █████   ████   █████████  █████   █████   █████████   █████]],
			[[  ███░░░░░███ ░░███   ███░   ███░░░░░███░░███   ░░███   ███░░░░░███ ░░███ ]],
			[[ ░███    ░███  ░███  ███    ███     ░░░  ░███    ░███  ░███    ░███  ░███ ]],
			[[ ░███████████  ░███████    ░███          ░███████████  ░███████████  ░███ ]],
			[[ ░███░░░░░███  ░███░░███   ░███          ░███░░░░░███  ░███░░░░░███  ░███ ]],
			[[ ░███    ░███  ░███ ░░███  ░░███     ███ ░███    ░███  ░███    ░███  ░███ ]],
			[[ █████   █████ █████ ░░████ ░░█████████  █████   █████ █████   █████ █████]],
			[[░░░░░   ░░░░░ ░░░░░   ░░░░   ░░░░░░░░░  ░░░░░   ░░░░░ ░░░░░   ░░░░░ ░░░░░ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰈔  > New File", ":ene <BAR> startinsert <CR>"),
			dashboard.button("e", "  > Browse Current Directory", ":Neotree filesystem reveal right<CR>"),
			dashboard.button("f", "  > Find File", ":cd ~\\ | Telescope find_files<CR>"),
			dashboard.button("g", "  > Find Word", ":Telescope live_grep<CR>"),
			dashboard.button(
				"c",
				"  > Config Neovim",
				":tabnew | :Neotree filesystem reveal right dir=" .. vim.fn.fnamemodify(vim.env.MYVIMRC, ":h") .. "<CR>"
			),
			dashboard.button("q", "󱎘  > Exit Neovim", ":qa <CR>"),
		}

		-- Menülerin hizasını ortala
		dashboard.section.buttons.opts = {
			spacing = 1,
			position = "center", -- Menüleri ortalamak için
		}

		-- Alt yazıyı (footer) ortalamak için özelleştirme
		dashboard.section.footer.val = footer
		dashboard.section.footer.opts = {
			position = "center", -- Alt yazıyı ortalamak için
			hl = "Constant", -- Renklendirme (isteğe bağlı)
		}

		alpha.setup(dashboard.opts)
	end,
}
