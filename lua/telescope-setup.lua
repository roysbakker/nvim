-- Source: https://github.com/nvim-telescope/telescope.nvim
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}

-- Set custom Telescope highlighs
-- (refer to: <telescope-repo>/plugin/telescope.lua)
local UserFuncs = require('user-functions')
local colors = require('user-colors').tokyo_colors
-- Set background color of inner areas
UserFuncs.set_hl_bg("TelescopePromptNormal",
	colors.tokyo_storm_bg)
UserFuncs.set_hl_bg("TelescopePreviewNormal",
	colors.tokyo_storm_bg)
UserFuncs.set_hl_bg("TelescopeResultsNormal",
	colors.tokyo_storm_bg)
-- Set foreground background colors of title areas
UserFuncs.set_hl_fg_bg("TelescopePromptTitle",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
UserFuncs.set_hl_fg_bg("TelescopePreviewTitle",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
UserFuncs.set_hl_fg_bg("TelescopeResultsTitle",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
-- Set foreground background colors of borders
UserFuncs.set_hl_fg_bg("TelescopePromptBorder",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
UserFuncs.set_hl_fg_bg("TelescopePreviewBorder",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
UserFuncs.set_hl_fg_bg("TelescopeResultsBorder",
	colors.tokyo_storm_fg,
	colors.tokyo_storm_bg)
