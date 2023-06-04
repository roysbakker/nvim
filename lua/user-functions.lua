local M = {}

-- Set neovim session to use spaces
M.use_spaces = function()
    vim.opt.shiftwidth=4       -- Set the size of an 'indent' to 4 spaces
    vim.opt.smarttab=true      -- Let a tab in front of a line insert 'shiftwidth' spaces
                               --    and let backspace delete 'shiftwidth' spaces
    vim.opt.expandtab=true     -- Let a tab insert 'shiftwidth' spaces
    vim.opt.tabstop=7          -- Display actual tabs as 7 spaces to see a clear difference
                               --    between tabs expanded as spaces and actual tabs
    vim.opt.softtabstop=0      -- Turn off softtabstop feature
    vim.opt.autoindent=true    -- Copy indent from current line when starting new line
end

-- Set neovim session to use tabs
M.use_tabs = function()
    vim.opt.shiftwidth=4       -- Set the size of an 'indent' to 4 spaces
    vim.opt.expandtab=false    -- Do not let tabs be expanded to spaces
    vim.opt.tabstop=4          -- Display actual tabs as 4 spaces
    vim.opt.autoindent=true    -- Copy indent from current line when starting new line
end

-- Set the foreground and background colors of the specified highlight group
M.set_hl_fg_bg = function(group, fg_color, bg_color)
	vim.cmd("hi " .. group .. " guifg=" .. fg_color .. " guibg=" .. bg_color)
end

-- Set the foreground color of the specified highlight group
M.set_hl_fg = function(group, fg_color)
	vim.cmd("hi " .. group .. " guifg=" .. fg_color)
end

-- Set the background color of the specified highlight group
M.set_hl_bg = function(group, bg_color)
	vim.cmd("hi " .. group .. "  guibg=" .. bg_color)
end

return M
