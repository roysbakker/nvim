-- Source: https://github.com/wbthomason/packer.nvim
return require("packer").startup(function(use)
	-- Let packer manage itself
	use "wbthomason/packer.nvim"
	-- Use Tokyo Night Neovim theme
	use "folke/tokyonight.nvim"
	-- Use nvim-treesitter for better syntax highlighting
	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end
	}
	-- Use nvim-web-devicons to add glyphs to some plugins
	-- (used for Telescope)
	use "nvim-tree/nvim-web-devicons"
	-- Use Plenary for asyn support in Lua
	-- (required dependency for Telescope)
	use "nvim-lua/plenary.nvim"
	-- Use Telescope as extensible fuzzy finder
	use {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = {"nvim-lua/plenary.nvim"}
	}
	-- Use nvim-tree as file explorer
	use {
		"nvim-tree/nvim-tree.lua",
		requires = {"nvim-tree/nvim-web-devicons"}
	}
	-- Use vim-illuminate for automatic word highlighting
	use "RRethy/vim-illuminate"
	-- Use Bufferline as buffer line with tabpage integration
	use {
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		requires = {"nvim-tree/nvim-web-devicons"}
	}
	-- Use lualine as status line
	use {
		"nvim-lualine/lualine.nvim",
		requires = {"nvim-tree/nvim-web-devicons"}
	}
	-- Use Shade to dim inactive windows
	use "sunjon/shade.nvim"
	-- Use coq for auto-completion
	use "ms-jpq/coq_nvim"
	use "ms-jpq/coq.artifacts"
	-- Use Indent Blankline for visualization of indents
	use "lukas-reineke/indent-blankline.nvim"
end)
