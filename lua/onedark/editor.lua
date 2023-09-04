local M = {}
function M.groups(theme)
	local config = require("onedark.config").config

	return {
		Normal = { bg = theme.extra.black1 }, -- background
		NormalNC = {}, -- background in non-current windows
		VertSplit = { bg = theme.extra.black1, fg = theme.default_colors.blue }, -- the column separating vertically split windows
		NormalFloat = { bg = theme.extra.black1 }, -- Normal text in floating windows.
		FloatBorder = { bg = theme.extra.black1, fg = theme.default_colors.blue },
		PopupTitle = {},
		PopupBorder = { fg = theme.default_colors.blue, bg = theme.extra.black1 },
		NormalPopup = { bg = theme.extra.black1 },

		Cursor = { fg = theme.extra.bg, bg = theme.default_colors.white }, -- character under the cursor
		-- CursorLine = { bg = "#7e7d76" }, -- Screen-line at the cursor, when 'cursorline' is set.
		CursorLine = { bg = theme.extra.white1 }, -- Screen-line at the cursor, when 'cursorline' is set.
		CursorLineNr = { fg = theme.default_colors.white }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineNrNC = {}, -- CursorLineNr for inactive windows
		Folded = { bg = theme.extra.white2 }, -- line used for closed folds
		FoldedNC = {}, -- Folded for inactive windows
		FoldColumn = { bg = theme.extra.black1, fg = theme.default_colors.grey }, -- 'foldcolumn'
		Substitute = { bg = theme.default_colors.yellow, fg = theme.extra.black1 }, -- |:substitute| replacement text highlighting

		EndOfBuffer = { fg = theme.extra.black1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		NonText = { bg = theme.extra.black1, fg = theme.default_colors.grey }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		MatchParen = { bg = theme.extra.white2 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		DiffAdd = { fg = theme.default_colors.green }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = theme.default_colors.yellow }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = theme.default_colors.red },
		DiffText = { fg = theme.default_colors.white, bg = theme.default_colors.black }, -- diff mode: Changed text within a changed line |diff.txt|

		Directory = { fg = theme.default_colors.blue }, -- directory names (and other special names in listings)

		SignColumn = { bg = theme.extra.black1 }, -- column where |signs| are displayed
		SignColumnNC = {}, -- SignColumn for inactive windows
		LineNr = { bg = theme.extra.black1, fg = theme.default_colors.grey }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrNC = {}, -- LineNr for inactive windows

		Pmenu = { bg = theme.extra.black1 }, -- Popup menu: normal item.
		PmenuSel = { fg = theme.default_colors.blue, bg = theme.extra.black1 }, -- Popup menu: selected item.
		PmenuSbar = { bg = theme.extra.black1 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = theme.extra.black1 }, -- Popup menu: Thumb of the scrollbar.

		TabLine = { bg = theme.default_colors.black }, -- tab pages line, not active tab page label
		TabLineFill = { bg = theme.default_colors.black, fg = theme.default_colors.white }, -- tab pages line, where there are no labels
		TabLineSel = { bg = theme.extra.black1, fg = theme.default_colors.blue }, -- tab pages line, active tab page label

		StatusLine = { bg = theme.extra.black1, fg = theme.default_colors.white, bold = true }, -- status line of current window
		StatusLineNC = {}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

		Visual = { reverse = true }, -- Visual mode selection
		VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".

		Search = { fg = theme.extra.black1, bg = theme.default_colors.yellow }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		-- SpecialKey   = {}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare    = {}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		IncSearch = { fg = theme.extra.black1, bg = theme.default_colors.orange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"

		Title = { fg = theme.default_colors.green }, -- titles for output from ":set all", ":autocmd"
		ErrorMsg = { fg = theme.default_colors.red }, -- error messages on the command line
		ModeMsg = { link = "Normal" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { link = "ModeMsg" }, -- Area for messages and cmdline
		MsgSeparator = { link = "ModeMsg" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = theme.default_colors.green }, -- |more-prompt|
		WarningMsg = { fg = theme.default_colors.yellow }, -- warning messages
		WinBar = { fg = theme.default_colors.grey },
		WinBarNC = {},

		-- Git
		diffFile = { fg = theme.default_colors.yellow },
		diffNewFile = { fg = theme.default_colors.yellow },
		diffLine = { fg = theme.default_colors.blue },

		-- Spelling
		SpellBad = { undercurl = true },
		SpellCap = { undercurl = true },
		SpellLocal = { undercurl = true },
		SpellRare = { undercurl = true },
	}
end

return M
