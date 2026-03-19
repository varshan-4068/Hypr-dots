--													_   _                 _              ____             __ _
--												 | \ | | ___  _____   _(_)_ __ ___    / ___|___  _ __  / _(_) __ _ ___
--												 |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` / __|
--												 | |\  |  __/ (_) \ V /| | | | | | | | |__| (_) | | | |  _| | (_| \__ \
--												 |_| \_|\___|\___/ \_/ |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |___/
--                                                             											 |___/

require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	require("plugins.alpha"),
	require("plugins.indent"),
	require("plugins.neo-tree"),
	require("plugins.treesitter"),
	require("plugins.autocompletion"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.lsp"),
	require("plugins.vim-tmux-navigator"),
	require("plugins.comment"),
	require("plugins.nvim-surround"),
	require("plugins.autopairs"),
	require("plugins.formatting"),
	require("plugins.vim-illuminate"),
	require("plugins.catppuccin"),
	require("plugins.linting"),
	require("plugins.mason-tool"),
	require("plugins.color"),
	require("plugins.auto-save"),
	require("plugins.md-render"),
	require("plugins.urlview"),
	require("plugins.nvim-biscuits"),
	require("plugins.terminal"),
	require("plugins.typr"),
	require("plugins.fzf"),
	require("plugins.gitsigns"),
	require("plugins.vim-fugitive"),
})
