local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		MasonHeader = { bg = theme.default_colors.red, fg = theme.default_colors.black },
		MasonHighlight = { fg = theme.default_colors.blue },
		MasonHighlightBlock = { fg = theme.default_colors.black, bg = theme.default_colors.blue },
		MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
		MasonHeaderSecondary = { link = "MasonHighlightBlock" },
		MasonMuted = { fg = theme.default_colors.grey },
		MasonMutedBlock = { fg = theme.default_colors.black, bg = theme.default_colors.grey },
	}
end

return M
