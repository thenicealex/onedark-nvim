local M = {}

local function hasKey(table, key)
	for k, _ in pairs(table) do
		if k == key then
			return true
		end
	end
	return false
end

local function set_hl(groups)
	for name, opts in pairs(groups) do
		if hasKey(opts, "style") then
			if opts.style == "NONE" then
				opts.style = nil
			else
				opts[opts.style] = true
				opts.style = nil
			end
		end
		vim.api.nvim_set_hl(0, name, opts)
	end
end

M.load = function()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "onedark"
	local theme = require("onedark.colors")
	local editor = require("onedark.editor").groups(theme)
	local syntax = require("onedark.syntax").groups(theme)
	local plugins = require("onedark.plugins").merges_plugins(theme)
	set_hl(editor)
	set_hl(syntax)
	set_hl(plugins)
end

return M
