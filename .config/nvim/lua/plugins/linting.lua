return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "pylint" },
			html = { "htmlhint" },
			rust = { "clippy" },
			sql = { "sqlfluff" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})

		lint.linters.clippy = {
			cmd = "cargo",
			args = {
				"clippy",
				"--message-format=json",
			},
			stdin = false,
			stream = "stdout",
			ignore_exitcode = true,
			parser = lint.linters.clippy.parser,
		}

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
