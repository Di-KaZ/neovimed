MiniDeps.add({
	source = "zbirenbaum/copilot-cmp",
	depends = {
		"zbirenbaum/copilot.lua",
	}
})

require("copilot_cmp").setup()
require("copilot").setup({
	suggestion = { enabled = false },
	panel = { enabled = false }
})
