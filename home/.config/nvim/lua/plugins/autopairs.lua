local function config()
	local autopairs = require("nvim-autopairs")
	autopairs.setup({
		check_ts = true,
	})

	local Rule = require("nvim-autopairs.rule")
	--local ts_conds = require("nvim-autopairs.ts-conds")

	autopairs.add_rules({
		Rule("(", ")", "*"),
	})

	autopairs.add_rules({
		Rule("{", "}", "*"),
	})

	autopairs.add_rules({
		Rule("[", "]", "*"),
	})

	autopairs.add_rules({
		Rule('"', '"', "*"),
	})

	autopairs.add_rules({
		Rule("'", "'", "*"),
	})

	autopairs.add_rules({
		Rule("`", "`", "*"),
	})
end

return {
	"windwp/nvim-autopairs",
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	event = "InsertEnter",
	config = config,
}
