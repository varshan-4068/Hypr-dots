return{
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗"
					}
        }
			})
		end
	},
	{
  	"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "pyright", "cssls", "html", "ts_ls","clangd","bashls"}
			})
		end
	},
	{
   	"neovim/nvim-lspconfig",
		config = function()
		  require'lspconfig'.lua_ls.setup{
				settings = {
						Lua = {
							diagnostics = {
								globals = {'opts','vim'},
							},
						},
					},
			}
			require'lspconfig'.pyright.setup{}
			require'lspconfig'.html.setup{}
			require'lspconfig'.cssls.setup{}
			require'lspconfig'.ts_ls.setup{}
			require'lspconfig'.ccls.setup{}
		end
	},
}
