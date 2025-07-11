return {
	'akinsho/bufferline.nvim',
	dependencies = {
		'moll/vim-bbye',
		'nvim-tree/nvim-web-devicons',
	},

	config = function()
		require('bufferline').setup {
			options = {
				mode = 'buffers',          -- set to "tabs" to only show tabpages instead
				numbers = 'ordinal',       -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
				close_command = 'Bdelete! %d', -- can be a string | function, see "Mouse actions"
				buffer_close_icon = '✗',
				close_icon = '',
				modified_icon = '●',
				left_trunc_marker = '',
				right_trunc_marker = '',
				diagnostics = true,
				diagnostics_update_in_insert = false,
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
				show_tab_indicators = true,
				-- separator_style = { '│', '│' },
				indicator = {
					style = 'icon', -- Options: 'icon', 'underline', 'none'
				},
				icon_pinned = '󰐃',
				minimum_padding = 8,
				maximum_padding = 10,
				maximum_length = 16,
				sort_by = 'insert_at_end',
			},
			highlights = {
				separator = {
					fg = '#cdd6f4',
				},

				buffer_selected = {
					bold = true,
					italic = true,
				},
			},
		}

		local opts = { noremap = true, silent = true, desc = 'Go to Buffer' }
		vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
		vim.keymap.set("n", "<C-x>", "<Cmd>BufferLineCyclePrev<CR>", {})
		vim.keymap.set('n', '<C-1>', "<cmd>lua require('bufferline').go_to_buffer(1)<CR>", opts)
		vim.keymap.set('n', '<C-2>', "<cmd>lua require('bufferline').go_to_buffer(2)<CR>", opts)
		vim.keymap.set('n', '<C-3>', "<cmd>lua require('bufferline').go_to_buffer(3)<CR>", opts)
		vim.keymap.set('n', '<C-4>', "<cmd>lua require('bufferline').go_to_buffer(4)<CR>", opts)
		vim.keymap.set('n', '<C-5>', "<cmd>lua require('bufferline').go_to_buffer(5)<CR>", opts)
		vim.keymap.set('n', '<C-6>', "<cmd>lua require('bufferline').go_to_buffer(6)<CR>", opts)
		vim.keymap.set('n', '<C-7>', "<cmd>lua require('bufferline').go_to_buffer(7)<CR>", opts)
		vim.keymap.set('n', '<C-8>', "<cmd>lua require('bufferline').go_to_buffer(8)<CR>", opts)
	end,
}
