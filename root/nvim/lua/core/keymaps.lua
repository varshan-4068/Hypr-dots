
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')

vim.keymap.set("v", "<Tab>", ">gv")

-- stay in indent mode
vim.keymap.set('v', '<', '<gv',opts)
vim.keymap.set('v', '>', '>gv',opts)

--keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP',opts)

--keybindings for telescope
vim.keymap.set('n', '<C-f>', '<cmd>Telescope find_files hidden=true<cr>', {noremap = true, silent = true })

--keybinding for code actions

vim.keymap.set('n', '<C-a>', vim.lsp.buf.code_action, opts)

--keybinding for tmux

vim.keymap.set('n', '<C-t>', ':term tmux<CR>', {noremap = true, silent = true})

--keybinding for closing buffer

vim.keymap.set('n', '<C-p>', ':Bdelete<CR>')

--keybinding for recording a macro

vim.keymap.set('n', '<C-r>', 'qa' )

--keybinding for non-arrow movements in nvim

vim.keymap.set('i', '<C-h>', '<Left>' )

vim.keymap.set('i', '<C-l>', '<Right>' )

vim.keymap.set('i', '<C-j>', '<Down>' )

vim.keymap.set('i', '<C-k>', '<Up>' )

--keybinding for formatting	

vim.keymap.set('n', 'C-g', vim.lsp.buf.format, {})


