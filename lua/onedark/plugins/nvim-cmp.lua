local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		CmpPmenu = { bg = theme.extra.darker_black },
		CmpBorder = { fg = theme.extra.white3,bg = theme.extra.darker_black },
		CmpSel = { link = "PmenuSel", bold = true },
		CmpPmenuSel = {bold = true },
		CmpItemAbbr = { fg = theme.default_colors.white },
		CmpItemAbbrMatch = { fg = theme.default_colors.blue, bold = true },

		CmpDoc = { bg = theme.extra.darker_black },
		CmpDocBorder = { fg = theme.extra.white3, bg = theme.extra.darker_black },

		-- cmp item kinds
		CmpItemKindConstant = { fg = theme.base_16.base09 },
		CmpItemKindFunction = { fg = theme.base_16.base0D },
		CmpItemKindIdentifier = { fg = theme.base_16.base08 },
		CmpItemKindField = { fg = theme.base_16.base08 },
		CmpItemKindVariable = { fg = theme.base_16.base0E },
		CmpItemKindSnippet = { fg = theme.default_colors.red },
		CmpItemKindText = { fg = theme.base_16.base0B },
		CmpItemKindStructure = { fg = theme.base_16.base0E },
		CmpItemKindType = { fg = theme.base_16.base0A },
		CmpItemKindKeyword = { fg = theme.base_16.base07 },
		CmpItemKindMethod = { fg = theme.base_16.base0D },
		CmpItemKindConstructor = { fg = theme.default_colors.blue },
		CmpItemKindFolder = { fg = theme.base_16.base07 },
		CmpItemKindModule = { fg = theme.base_16.base0A },
		CmpItemKindProperty = { fg = theme.base_16.base08 },
		CmpItemKindEnum = { fg = theme.default_colors.blue },
		CmpItemKindUnit = { fg = theme.base_16.base0E },
		CmpItemKindClass = { fg = theme.default_colors.teal },
		CmpItemKindFile = { fg = theme.base_16.base07 },
		CmpItemKindInterface = { fg = theme.default_colors.green },
		CmpItemKindColor = { fg = theme.default_colors.white },
		CmpItemKindReference = { fg = theme.base_16.base05 },
		CmpItemKindEnumMember = { fg = theme.default_colors.purple },
		CmpItemKindStruct = { fg = theme.base_16.base0E },
		CmpItemKindValue = { fg = theme.default_colors.cyan },
		CmpItemKindEvent = { fg = theme.default_colors.yellow },
		CmpItemKindOperator = { fg = theme.base_16.base05 },
		CmpItemKindTypeParameter = { fg = theme.base_16.base08 },
		CmpItemKindCopilot = { fg = theme.default_colors.green },
	}
end

return M
