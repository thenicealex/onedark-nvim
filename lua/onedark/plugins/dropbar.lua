local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		DropBarCurrentContext = {fg = theme.default_colors.blue, bg = theme.extra.black1},
		DropBarMenuHoverIcon = { bg = theme.extra.black1 },
		DropBarMenuHoverEntry = { fg = theme.default_colors.blue,bg = theme.extra.black1 },
		DropBarPreview = { bg = theme.extra.white3 },
		DropBarMenuHoverSymbol = { bold = true },
	}
end

return M
