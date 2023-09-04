local M = {}
function M.groups(theme)
	local config = require("onedark.config")

	return {
		Comment = { fg = theme.default_colors.grey, style = config.styles.comments }, -- Comments
		Constant = { fg = theme.default_colors.orange, style = config.styles.constants }, -- (preferred) any constant
		String = { fg = theme.default_colors.green, style = config.styles.strings }, --   a string constant: "this is a string"
		Character = { fg = theme.default_colors.green }, -- a character constant: 'c', '\n'
		Number = { fg = theme.default_colors.orange, style = config.styles.numbers }, -- a number constant: 234, 0xff
		Float = { fg = theme.default_colors.orange }, -- a floating point constant: 2.3e10
		Boolean = { fg = theme.default_colors.orange }, -- a boolean constant: TRUE, false

		Identifier = { fg = theme.default_colors.red, style = config.styles.variables }, -- (preferred) any variable name
		Function = { fg = theme.default_colors.blue, style = config.styles.functions }, -- function name (also: methods for classes)

		Statement = { fg = theme.default_colors.purple }, -- (preferred) any statement
		Conditional = { fg = theme.default_colors.purple, style = config.styles.conditionals }, --  if, then, else, endif, switch, etc
		Repeat = { fg = theme.default_colors.purple }, -- for, do, while, etc
		Label = { fg = theme.default_colors.purple }, -- case, default, etc

		Operator = { fg = theme.default_colors.cyan, style = config.styles.operators }, -- "sizeof", "+", "*", etc
		Keyword = { fg = theme.default_colors.purple, style = config.styles.keywords }, -- any other keyword
		Exception = { link = "Keyword" }, -- try, catch, throw

		PreProc = { fg = theme.default_colors.yellow }, -- (preferred) generic Preprocessor
		Include = { fg = theme.default_colors.purple }, -- preprocessor #include
		Define = { fg = theme.default_colors.purple }, -- preprocessor #define
		Macro = { fg = theme.default_colors.blue }, -- same as Define
		PreCondit = { fg = theme.default_colors.yellow }, -- preprocessor #if, #else, #endif, etc

		Type = { fg = theme.default_colors.yellow, style = config.styles.types }, -- (preferred) int, long, char, etc
		StorageClass = { fg = theme.default_colors.yellow }, -- static, register, volatile, etc
		Structure = { fg = theme.default_colors.purple }, -- struct, union, enum, etc
		Typedef = { fg = theme.default_colors.purple }, -- A typedef

		Special = { fg = theme.default_colors.blue }, -- (preferred) any special symbol
		SpecialChar = { fg = theme.default_colors.orange }, -- special character in a constant
		-- Tag = {}, -- you can use CTRL-] on this
		Delimiter = { fg = theme.default_colors.blue }, -- character that needs attention
		SpecialComment = { fg = theme.default_colors.grey }, -- special things inside a comment
		-- Debug = {}, -- debugging statements

		Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
		Bold = { bold = true },
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|
		Italic = { italic = true },

		Error = { fg = theme.default_colors.red }, -- (preferred) any erroneous construct
		Todo = { fg = theme.default_colors.purple }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		qfLineNr = { link = "LineNr" },
		qfFileName = { link = "Directory" },
	}
end

return M
