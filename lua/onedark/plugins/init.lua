local name = {
	"flash",
	"nvim-tree",
	"tabufline",
	"nvim-treesitter",
	"rainbow-delimiters",
	"nvim-cmp",
	"telescope",
	"notice",
	"mason",
	"dropbar",
}
local M = {}

---Merges recursively two or more map-like tables
---@param...any Two or more map-like tables
---@return table Merged table
local function deep_extend(...)
	local lhs = {}
	for _, rhs in ipairs({ ... }) do
		for k, v in pairs(rhs) do
			if type(lhs[k]) == "table" and type(v) == "table" then
				lhs[k] = deep_extend(lhs[k], v)
			else
				lhs[k] = v
			end
		end
	end
	return lhs
end

function M.merges_plugins(theme)
	local plugins = {}
	for _, n in ipairs(name) do
		local temp = require("onedark.plugins." .. n).groups(theme)
		plugins = deep_extend(plugins, temp)
	end
	return plugins
end

-- local theme = require("onedark.colors")
-- for key, value in pairs(M.merges_plugins(theme)) do
-- 	print(key,value)
-- 	
-- end

return M
