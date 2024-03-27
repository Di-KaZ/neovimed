MiniDeps.add({
	source = "Exafunction/codeium.nvim",
	depends = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	}
})
require("codeium").setup({})
