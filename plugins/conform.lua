MiniDeps.add("stevearc/conform.nvim")

require("conform").setup({
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
	formatters_by_ft = {
		javascript = { { "prettierd", "prettier" } },
	}
})
