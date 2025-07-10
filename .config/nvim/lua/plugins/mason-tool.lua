return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = { "eslint_d", "pylint", "black", "clang-format", "stylelint", "prettier", "markdown_oxide", "markdownlint" },
			auto_update = false,
			run_on_start = true,
		})
	end,
}
