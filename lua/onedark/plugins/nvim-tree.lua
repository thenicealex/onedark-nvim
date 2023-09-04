local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		NvimTreeFolderIcon = { fg = theme.default_colors.blue },
	}
end

return M
