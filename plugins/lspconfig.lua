MiniDeps.add('nvim-tree/nvim-web-devicons')

MiniDeps.add({
	source = 'neovim/nvim-lspconfig',
	-- supply dependencies near target plugin
	depends = {
		"williamboman/mason-lspconfig.nvim",
		'williamboman/mason.nvim'
	},
})


MiniDeps.add("davidosomething/format-ts-errors.nvim")
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

local lsp = require("lspconfig")

lsp.tsserver.setup({
	handlers = {
		["textDocument/publishDiagnostics"] = function(
			_,
			result,
			ctx,
			config
		)
			if result.diagnostics == nil then
				return
			end

			-- ignore some tsserver diagnostics
			local idx = 1
			while idx <= #result.diagnostics do
				local entry = result.diagnostics[idx]

				local formatter = require('format-ts-errors')[entry.code]
				entry.message = formatter and formatter(entry.message) or entry.message

				-- codes: https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json
				if entry.code == 80001 then
					-- { message = "File is a CommonJS module; it may be converted to an ES module.", }
					table.remove(result.diagnostics, idx)
				else
					idx = idx + 1
				end
			end

			vim.lsp.diagnostic.on_publish_diagnostics(
				_,
				result,
				ctx,
				config
			)
		end,
	},
})
