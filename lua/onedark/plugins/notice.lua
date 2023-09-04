local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		NoiceCmdline = { fg = theme.extra.white },
		NoiceCmdlinePopupTitle = { fg = theme.default_colors.blue },
		NoiceCmdlineIcon = { fg = theme.default_colors.blue },
		NoiceCmdlineIconSearch = { fg = theme.default_colors.yellow },
		NoiceCmdlinePopupBorder = { fg = theme.extra.white3 },
		NoiceCmdlinePopupBorderSearch = { fg = theme.default_colors.yellow },
		NoiceConfirmBorder = { fg = theme.default_colors.blue },
		NoiceMini = { fg = theme.default_colors.grey, blend = 0 },
	}
end

return M
