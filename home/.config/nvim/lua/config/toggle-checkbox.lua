local M = {}

local function set_current_line(line)
	vim.api.nvim_set_current_line(line)
	vim.cmd("write")
end

function M.toggle_checkbox()
	local line = vim.api.nvim_get_current_line()

	local unchecked_pattern = "^%s*%- %[ %]"
	local checked_pattern = "^%s*%- %[x%]"

	if line:match(unchecked_pattern) then
		local new_line = line:gsub("%[ %]", "[x]")
		set_current_line(new_line)
	elseif line:match(checked_pattern) then
		local new_line = line:gsub("%[x%]", "[ ]")
		set_current_line(new_line)
	else
		vim.notify("checkbox not found", vim.log.levels.WARN)
	end
end

vim.api.create_user_command("MDToggleCheckbox", M.toggle_checkbox)
vim.keymap.set("n", "<leader>mt", "<cmd>MDToggleCheckbox<CR>", { desc = "Toggle Markdown Checkbox" })

return M
