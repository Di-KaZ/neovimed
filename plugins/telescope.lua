MiniDeps.add({
	source = "nvim-telescope/telescope.nvim",
	depends = {
		'nvim-lua/plenary.nvim'
	}
})

require('telescope').setup({
	file_ignore_patterns = { "node_modules" }
})
