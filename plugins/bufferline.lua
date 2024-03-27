MiniDeps.add({
	source = "akinsho/bufferline.nvim",
	deppends = {
		"nvim-tree/nvim-web-devicons",
	}
})

local bufferline = require("bufferline")

bufferline.setup({
	options = {
		-- separator_style = "slope"
		buffer_close_icon = "✕",
		left_trunc_marker = "",
		right_trunc_marker = "",
	}
})

vim.g.transparent_groups = vim.list_extend(
	vim.g.transparent_groups or {},
	vim.tbl_map(function(v)
		return v.hl_group
	end, vim.tbl_values(require('bufferline.config').highlights))
)
