local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
	return {
		-- misc
		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { link = "@comment" },
		["@error"] = { link = "Error" },
		["@none"] = { link = "@Comment" },
		["@preproc"] = { link = "PreProc" },
		["@define"] = { link = "Define" },
		["@operator"] = { link = "Operator" },

		-- punctuation
		["@punctuation.bracket"] = { fg = theme.default_colors.white },
		["@punctuation.delimiter"] = { fg = theme.default_colors.white },
		["@punctuation.special"] = { link = "Special" },

		-- literals
		["@string"] = { link = "String" },
		["@string.escape"] = { fg = theme.default_colors.red },
		["@string.regex"] = { link = "String" },
		["@string.special"] = { link = "String" },

		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },

		["@boolean"] = { link = "Boolean" },
		["@number"] = { link = "Number" },
		["@float"] = { link = "Float" },

		-- function
		["@function"] = { link = "Function" },
		["@function.builtin"] = { fg = theme.default_colors.cyan },
		["@function.call"] = { link = "@function" },
		["@function.macro"] = { fg = theme.default_colors.yellow },

		["@method"] = { link = "@function" },
		["@method.call"] = { link = "@method" },

		["@constructor"] = { link = "@function" },
		["@parameter"] = {
			fg = theme.default_colors.orange,
			italic = true,
		},

		-- keyword
		["@keyword"] = { link = "Keyword" },
		["@keyword.corotine"] = { link = "Keyword" },
		["@keyword.function"] = { link = "Keyword" },
		["@keyword.operator"] = { link = "Keyword" },
		["@keyword.return"] = { link = "Keyword" },
		["@keyword.export"] = { link = "Keyword" },

		["@conditional"] = { link = "Conditional" },
		["@conditional.ternary"] = { link = "@conditional" },

		["@repeat"] = { link = "Repeat" },
		["@debug"] = { link = "Debug" },
		["@label"] = { link = "Label" },
		["@include"] = { link = "Include" },
		["@exception"] = { link = "Exception" },

		-- types
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "@type" },
		["@type.definition"] = { link = "@type" },
		["@type.qualifier"] = { link = "@type" },

		["@storageclass"] = { link = "StorageClass" },
		["@attribute"] = { fg = theme.default_colors.yellow },
		["@field"] = { fg = theme.default_colors.red },
		["@property"] = { fg = theme.default_colors.red },

		-- identifiers
		["@variable"] = { link = "Identifier" },
		["@variable.builtin"] = {
			fg = theme.default_colors.cyan,
			bold = true,
		},

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { link = "@constant" },
		["@constant.macro"] = { link = "@constant" },

		["@namespace"] = { link = "Keyword" },
		["@namespace.builtin"] = { fg = theme.default_colors.yellow },
		["@symbol"] = { link = "Special" },

		-- text
		["@text"] = { fg = theme.default_colors.text },
		["@text.strong"] = { fg = theme.default_colors.blue, bold = true },
		["@text.emphasis"] = { fg = theme.default_colors.purple, italic = true },
		["@text.underline"] = { link = "Underline" },
		["@text.strike"] = { fg = theme.default_colors.green, strikethrough = true },
		["@text.title"] = { fg = theme.default_colors.text, bold = true },
		["@text.title.1.markdown"] = { fg = theme.default_colors.purple, bold = true },
		["@text.title.2.markdown"] = { fg = theme.default_colors.blue, bold = true },
		["@text.title.3.markdown"] = { fg = theme.default_colors.cyan, bold = true },
		["@text.title.4.markdown"] = { fg = theme.default_colors.green, bold = true },
		["@text.title.5.markdown"] = { fg = theme.default_colors.yellow, bold = true },
		["@text.literal"] = { fg = theme.default_colors.text },
		["@text.quote"] = { fg = theme.default_colors.text, italic = true },
		["@text.uri"] = { fg = theme.default_colors.green, italic = true, underline = true },
		["@text.math"] = { fg = theme.default_colors.blue },
		["@text.environment"] = { fg = theme.default_colors.orange },
		["@text.environment.name"] = { fg = theme.default_colors.blue },
		["@text.reference"] = { fg = theme.default_colors.yellow, bold = true },

		["@text.todo"] = { fg = theme.extra.black1, bg = theme.default_colors.yellow },
		["@text.note"] = { fg = theme.extra.black1, bg = theme.default_colors.blue },
		["@text.todo.note"] = { link = "@text.note" },
		["@text.warning"] = { fg = theme.extra.black1, bg = theme.default_colors.orange },
		["@text.todo.warning"] = { link = "@text.warning" },
		["@text.danger"] = { fg = theme.extra.black1, bg = theme.default_colors.red },
		["@text.todo.danger"] = { link = "@text.danger" },
		["@text.unchecked"] = { fg = theme.extra.black1, bg = theme.default_colors.purple },
		["@text.todo.unchecked"] = { link = "@text.unchecked" },
		["@text.checked"] = { fg = theme.extra.black1, bg = theme.default_colors.green },
		["@text.todo.checked"] = { link = "@text.checked" },

		["@text.diff.add"] = { link = "DiffAdded" },
		["@text.diff.delete"] = { link = "DiffDelete" },

		-- tag
		["@tag"] = { fg = theme.default_colors.red },
		["@tag.attribute"] = { fg = theme.default_colors.cyan },
		["@tag.delimiter"] = { fg = theme.default_colors.text },

		-- semantic tokens
		["@annotation"] = { fg = theme.default_colors.yellow },
		["@class"] = { fg = theme.default_colors.blue },
		["@decorator"] = { fg = theme.default_colors.orange },
		["@enum"] = { fg = theme.default_colors.cyan },
		["@enumMember"] = { fg = theme.default_colors.orange },
		["@event"] = { fg = theme.default_colors.orange },
		["@interface"] = { fg = theme.default_colors.orange },
		["@modifier"] = { fg = theme.default_colors.orange },
		["@regexp"] = { fg = theme.default_colors.cyan },
		["@struct"] = { fg = theme.default_colors.blue },
		["@typeParameter"] = { fg = theme.default_colors.yellow },

		-----------------------
		-- Language Specific --
		-----------------------

		-- cpp
		["@property.cpp"] = { fg = theme.default_colors.orange },

		-- css
		["@number.css"] = { fg = theme.default_colors.cyan },
		["@property.css"] = { fg = theme.default_colors.orange },
		["@property.class.css"] = { fg = theme.default_colors.yellow },
		["@property.id.css"] = { fg = theme.default_colors.blue },
		["@string.plain.css"] = { fg = theme.default_colors.green },
		["@type.tag.css"] = { fg = theme.default_colors.purple },
		["@type.css"] = { fg = theme.default_colors.orange },

		-- json
		["@label.json"] = { fg = theme.default_colors.blue },

		-- lua
		["@constructor.lua"] = { fg = theme.default_colors.orange },
		["@variable.lua"] = { link = "@variable" },

		-- markdown
		["@literal.markdown"] = { fg = theme.default_colors.green },
		["@none.markdown"] = { fg = theme.default_colors.white },
		["@punctuation.delimiter.markdown"] = { fg = theme.default_colors.white },
		["@punctuation.special.markdown"] = { fg = theme.default_colors.red },
		["@title.markdown"] = { fg = theme.default_colors.red, bold = true },

		-- PHP
		["@type.qualifier.php"] = { link = "Keyword" },
		["@method.php"] = { link = "Function" },
		["@method.call.php"] = { link = "Function" },

		-- Ruby
		["@symbol.ruby"] = { fg = theme.default_colors.orange },

		-- rust
		["@constant.rust"] = { fg = theme.default_colors.cyan },
		["@function.macro.rust"] = { fg = theme.default_colors.red },
		["@namespace.rust"] = { fg = theme.default_colors.purple },
		["@punctuation.special.rust"] = { fg = theme.default_colors.purple },
		["@type.rust"] = { fg = theme.default_colors.cyan },

		-- toml
		["@property.toml"] = { fg = theme.default_colors.red },

		-- typescript
		["@type.qualifier.typescript"] = { link = "Keyword" },
		["@constructor.typescript"] = { fg = theme.default_colors.purple },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = theme.default_colors.purple },
		["@tag.attribute.tsx"] = { fg = theme.default_colors.purple, italic = true },

		-- yaml
		["@field.yaml"] = { fg = theme.default_colors.red },
	}
end

return M
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
