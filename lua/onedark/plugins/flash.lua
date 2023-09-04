local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		FlashBackdrop = { fg = theme.default_colors.grey },
		FlashCurrent = { fg = theme.default_colors.blue, bg = theme.extra.black1, bold = true },
		FlashLabel = { fg = theme.extra.red2, bg = theme.extra.black1, bold = true },
		FlashMatch = { fg = theme.default_colors.yellow },
	}
end

return M
