return {
	"https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git",
	main = "rainbow-delimiters.setup",
	opts = {
		strategy = {
			[""] = "rainbow-delimiters.strategy.global",
			vim = "rainbow-delimiters.strategy.local",
		},
		query = {
			[""] = "rainbow-delimiters",
			lua = "rainbow-blocks",
		},
		priority = {
			[""] = 110,
			lua = 210,
		},
		highlight = {
			"RainbowDelimiterRed",
			"RainbowDelimiterYellow",
			"RainbowDelimiterBlue",
			"RainbowDelimiterOrange",
			"RainbowDelimiterGreen",
			"RainbowDelimiterViolet",
			"RainbowDelimiterCyan",
		},
	},
}
