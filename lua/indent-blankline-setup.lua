-- Source: https://github.com/lukas-reineke/indent-blankline.nvim
-- (refer to command "help indent-blankline-variables")
require("indent_blankline").setup {
	char = '│',
	-- char_blankline = '┆',
	-- char_list = {'|', '.', ',', ';'},
	-- char_list_blankline = [],
	-- char_highlight_list = [],
	-- space_char_blankline = ' ',
	use_treesitter = true,
	show_current_context = true,
	context_char = '┃',
	buftype_exclude = { "terminal" },
	show_trailing_blankline_indent = false,
}

-- Set custom indent coloring
local UserFuncs = require('user-functions')
local colors = require('user-colors').tokyo_colors
UserFuncs.set_hl_fg("IndentBlanklineChar", colors.tokyo_storm_fg_dark_3x)
UserFuncs.set_hl_fg("IndentBlanklineContextChar", colors.tokyo_storm_fg_dark_1x)
