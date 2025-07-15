local function config()
	require("lualine").setup({
		options = {
			icons_enabled = true,
			theme = "auto",
			component_separators = { left = "", right = "|" },
			section_separators = { left = "", right = "" },
			ignore_focus = {},
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
				refresh_time = 16, -- ~60FPS
				events = {
					"WinEnter",
					"BufEnter",
					"BufWritePost",
					"SessionLoadPost",
					"FileChangedShellPost",
					"VimResized",
					"Filetype",
					"CursorMoved",
					"CursorMovedI",
					"ModeChanged",
				},
			},
		},
		sections = {
			lualine_a = {
				{
					"mode",
					color = {
						fg = "",
						bg = "",
						gui = "",
					},
				},
			},
			lualine_b = { "branch", "diff" },
			lualine_c = { "diagnostics" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = {},
			lualine_z = {
				{
					"location",
					color = {
						fg = "",
						bg = "",
						gui = "",
					},
				},
			},
		},
		extensions = { "nvim-tree" },
	})
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
}
