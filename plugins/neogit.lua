MiniDeps.add({
	source = "NeogitOrg/neogit",
	-- checkout = 'nightly',
	depends = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim"
	}
})

require("neogit").setup({})
