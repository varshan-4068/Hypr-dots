return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			python = { "pylint" },
			html = { "htmlhint" },
			css = { "stylelint" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})

		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			severity_sort = true,
			underline = false,
			float = {
				source = "always",
				border = "rounded",
			}
		})

		vim.keymap.set("n", "<leader>t", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
