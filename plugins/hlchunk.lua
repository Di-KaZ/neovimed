MiniDeps.add("shellRaining/hlchunk.nvim")

require("hlchunk").setup({
	blank = { enable = false },
	chunk = {
		chars = {
			right_arrow = "─",
		},
	},
	indent = {
		-- chars = {
		-- "¦",
		-- },
		-- style = {
		-- vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
		-- },
	}
})
