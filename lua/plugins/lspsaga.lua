return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		local lspsaga = require("lspsaga")

		lspsaga.setup({
			code_action = {
				extend_gitsigns = true,
			},
			symbol_in_winbar = {
				enable = false,
			},
			lightbulb = {
				enable = false,
				virtual_text = false,
				-- code_action = '',
			}
		})
	end
}
