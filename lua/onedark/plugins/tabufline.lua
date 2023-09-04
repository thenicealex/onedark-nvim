local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		-- TblineFill = { link = "TabLine" },
		TbLineBufOn = { fg = theme.default_colors.white, bg = theme.extra.black1 },
		TbLineBufOff = { fg = theme.default_colors.grey, bg = theme.default_colors.black },
		TbLineBufOnModified = { fg = theme.default_colors.green, bg = theme.extra.black1 },
		TbLineBufOffModified = { fg = theme.default_colors.red, bg = theme.default_colors.black },
		TbLineBufOnClose = { fg = theme.default_colors.red, bg = theme.extra.black1 },
		TbLineBufOffClose = { fg = theme.default_colors.grey, bg = theme.default_colors.black },
		-- TblineTabNewBtn = { fg = C.co.base, bg = C.co.comment, bold = true },
		TbLineTabOn = { fg = theme.extra.black1, bg = theme.default_colors.blue, bold = true },
		TbLineTabOff = { fg = theme.default_colors.white, bg = theme.extra.black1 },
		TbLineTabCloseBtn = { fg = theme.extra.black1, bg = theme.default_colors.blue },
		TBTabTitle = { fg = theme.default_colors.black, bg = theme.default_colors.white },
		-- TbLineThemeToggleBtn = { bold = true, fg = C.white, bg = C.one_bg3, },
		TbLineCloseAllBufsBtn = { bold = true, bg = theme.default_colors.red, fg = theme.extra.black1 },
	}
end

return M
