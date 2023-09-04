
local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		TelescopeSelection = { bg = theme.extra.black2, fg = theme.default_colors.blue },
		TelescopeBorder = { fg = theme.extra.white3, bg = theme.extra.black1 },
		TelescopePromptPrefix = { fg = theme.default_colors.red, bg = theme.extra.black1, },
		TelescopePreviewLine = { fg = theme.extra.darker_black, bg = theme.default_colors.blue, },
	}
end

return M
