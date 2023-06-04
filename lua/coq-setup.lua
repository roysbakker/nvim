-- Source: https://github.com/ms-jpq/coq_nvim
vim.g.coq_settings = {
	auto_start = 'shut-up',
	keymap = {
		-- Always select first result
		pre_select = true
	},
	clients = {
		tree_sitter = {
			enabled = true,
			weight_adjust = 1.0
		},
	},
	display = {
		pum = {
			fast_close = false
		},
		preview = {
			positions = {north = 1, south = 3, west = 4, east = 2},
		},
	},
}
