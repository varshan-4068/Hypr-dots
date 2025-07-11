return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require("telescope").setup {
				defaults = {
					file_ignore_patterns = { "node_modules", ".git" },
					preview = false,
				},
				pickers = {
					find_files = {
						theme = "dropdown",
					},
					buffers = {
						theme = "dropdown",
						disable_devicons = true,
					},
					help_tags = {
						theme = "dropdown",
						disable_devicons = true,
					},

				},
			}
		end
	},
}
