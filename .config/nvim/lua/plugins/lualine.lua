return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require('lualine')

    local function lsp_client()
      local clients = vim.lsp.get_clients({ bufnr = 0 })
      if #clients == 0 then
        return "No LSP"
      end
      return "  " .. clients[1].name
    end

    lualine.setup({
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '➜', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = { 'dashboard', 'alpha', 'lazy', 'mason' },
          winbar = {},
        },
        always_divide_middle = true,
        globalstatus = true,
        always_show_tabline = false,
        refresh = {
          statusline = 200,
          tabline = 1000,
          winbar = 1000,
        },
      },

      sections = {
        lualine_a = {
          { 'mode', separator = { left = '' }, right_padding = 2 },
        },

        lualine_b = {
          {
            'branch',
						icon = '',
          },
          {
            'diff',
            symbols = { added = ' ', modified = ' ', removed = ' ' },
          },
					{
            'filename',
            path = 0,
            symbols = {
              modified = '●',
              readonly = '',
              unnamed = '[No Name]',
            },
					},
          {
            separator = { right = '' },
            left_padding = 2,
          },
        },

        lualine_c = {
        },

        lualine_x = {
          {
            lsp_client,
            icon = '',
          },
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵 ' },
          },
          'encoding',
          'fileformat',
          'filetype',
        },

        lualine_y = {
          { 'progress' },
        },

        lualine_z = {
          {
            'location',
            separator = { right = '' },
            left_padding = 2,
          },
        },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },

      tabline = {},
      extensions = { 'fugitive', 'nvim-tree', 'quickfix' },
    })
  end,
}
