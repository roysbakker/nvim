-- Remove "How-to disable mouse" menu item on right-mouse click
-- (refer to: https://neovim.io/doc/user/vim_diff.html#default-mouse)
vim.cmd([[
    aunmenu PopUp.How-to\ disable\ mouse
    aunmenu PopUp.-1-
]])

vim.opt.number = true			-- Turn on line numbering by default
vim.opt.cursorline = true		-- Turn on cursor line highlighting
vim.opt.termguicolors = true	-- Enable use of 24-bit RGB color in TUI
vim.g.mapleader = ","			-- Set leader key to ','

-- Import plugins
require("plugins")
-- Import setup for each plugin
require("nvim-treesitter-setup")
require("nvim-web-devicons-setup")
require("telescope-setup")
require("nvim-tree-setup")
require("vim-illuminate-setup")
require("bufferline-setup")
require("lualine-setup")
require("tokyonight-setup")
require("shade-setup")
require("coq-setup")
require("indent-blankline-setup")
-- Import user configuration
require("user-keymap")
UserFuncs = require("user-functions")

-- Configure tabs as tabs
UserFuncs.use_tabs()

-- General (plugin non-specific) highlight overrides
local UserFuncs = require('user-functions')
local colors = require('user-colors').tokyo_colors
UserFuncs.set_hl_fg_bg("NormalFloat",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
UserFuncs.set_hl_fg_bg("FloatBorder",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
