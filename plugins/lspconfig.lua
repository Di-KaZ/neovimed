MiniDeps.add('nvim-tree/nvim-web-devicons')

MiniDeps.add({
	source = 'neovim/nvim-lspconfig',
	-- supply dependencies near target plugin
	depends = {
		"williamboman/mason-lspconfig.nvim",
		'williamboman/mason.nvim'
	},
})


-- neodev need to be stup before lspconfig
MiniDeps.add("folke/neodev.nvim")
require("neodev").setup()

require('nvim-web-devicons').setup()

require("mason").setup()

require("mason-lspconfig").setup({
	-- dartls in managed by flutter-tools
	automatic_installation = { exclude = { "dartls" } }
})

-- auto install lsp when available
require("mason-lspconfig").setup_handlers({
	function(server_name)
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		require("lspconfig")[server_name].setup {
			capabilities = capabilities
		}
	end
})
