MiniDeps.add("nvim-tree/nvim-tree.lua")
require("nvim-tree").setup({
	on_attach = function()
	end,
	filters = {
		dotfiles = true,
	},
})
