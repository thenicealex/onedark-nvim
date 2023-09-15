local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
    LazyButtonActive = {bg= theme.default_colors.blue, fg= theme.default_colors.black},
    LazyProp = {bg= theme.default_colors.orange, fg= theme.default_colors.black},
    -- LazySpecial = {fg= theme.default_colors.blue},
	}
end

return M
