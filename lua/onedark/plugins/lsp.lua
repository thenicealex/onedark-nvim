
local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		DiagnosticSignError = {fg = theme.default_colors.red},
		DiagnosticSignWarn = {fg = theme.default_colors.yellow},
		DiagnosticSignHint = {fg = theme.default_colors.purple},
		DiagnosticSignInfo = {fg = theme.default_colors.blue},

	}
end

return M
