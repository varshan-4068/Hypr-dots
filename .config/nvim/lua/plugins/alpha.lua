return {
	'goolord/alpha-nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},

	config = function()
		local alpha = require 'alpha'
		local dashboard = require 'alpha.themes.dashboard'

		dashboard.section.header.val = {
			[[-----------------MADE BY SIRIVARSHAN----------------]],
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
			[[-------------------I USE ARCH BTW-------------------]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files hidden=true<CR>"),
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ll", "  > PLugin Manager", "<cmd>Lazy<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		vim.cmd [[autocmd User AlphaReady echo 'Ready']]

		alpha.setup(dashboard.opts)
	end,
}
