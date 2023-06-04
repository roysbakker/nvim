-- Telescope key bindings
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})

local nvim_tree_api = require('nvim-tree.api')
vim.keymap.set('n', '<leader>tt', nvim_tree_api.tree.toggle, {})
vim.keymap.set('n', '<leader>to', nvim_tree_api.tree.open, {})
vim.keymap.set('n', '<leader>tc', nvim_tree_api.tree.close, {})
