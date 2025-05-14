local M = {}

function M.IsDesktop()
	local handle = io.popen("uname -o")
	if handle == nil then
		return false
	end

	local result = handle:read("*a")
	handle:close()

	return result ~= "Android\n"
end

return M
