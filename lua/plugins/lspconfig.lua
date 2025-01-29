return {
	{
		'neovim/nvim-lspconfig',
		-- supply dependencies near target plugin
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			'williamboman/mason.nvim',
		},
		config = function()
			require("mason").setup()
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup()

			mason_lspconfig.setup_handlers {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup {}
				end,
				-- Next, you can provide a dedicated handler for specific servers.
				-- For example, a handler override for the `rust_analyzer`:
				["rust_analyzer"] = function()
					require("rust-tools").setup {}
				end
			}
		end
	},
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	}
}
