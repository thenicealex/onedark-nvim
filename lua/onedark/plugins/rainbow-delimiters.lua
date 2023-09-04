local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		RainbowDelimiterRed = { fg = theme.default_colors.red },
		RainbowDelimiterYellow = { fg = theme.default_colors.yellow },
		RainbowDelimiterBlue = { fg = theme.default_colors.blue },
		RainbowDelimiterOrange = { fg = theme.default_colors.orange },
		RainbowDelimiterGreen = { fg = theme.default_colors.green },
		RainbowDelimiterViolet = { fg = theme.default_colors.purple },
		RainbowDelimiterCyan = { fg = theme.default_colors.cyan },
	}
end

return M
