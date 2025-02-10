return {
	{ "rafamadriz/friendly-snippets" },
	{
		'saghen/blink.compat',
		-- use the latest release, via version = '*', if you also use the latest release for blink.cmp
		version = '*',
		-- lazy.nvim will automatically load the plugin when it's required by blink.cmp
		lazy = true,
		-- make sure to set opts so that lazy.nvim calls blink.compat's setup
		opts = {},
	},
	{ -- optional blink completion source for require statements and module annotations
		"saghen/blink.cmp",
		dependencies = {
			"Jezda1337/nvim-html-css"
		},
		version = '*',
		-- build = 'cargo build --release',
		opts = {
			completion = {
				list = {
					selection = {
						preselect = function(ctx) return not require('blink.cmp').snippet_active({ direction = 1 }) end
					}
				}
			},
			signature = { enabled = true },
			keymap = {
				preset = 'super-tab'
			},
			sources = {
				-- add lazydev to your completion providers
				default = { "lazydev", "lsp", "path", "snippets", "buffer", "html-css" },
				providers = {
					["html-css"] = {
						name = "html-css",
						module = 'blink.compat.source',
						score_offset = -3,
						opts = {
							enable_on = { "html" }, -- html is enabled by default
							notify = false,
							documentation = {
								auto_show = true, -- show documentation on select
								auto_show_delay_ms = 200,
							},
							-- add any external scss like one below
							style_sheets = {
								"http://localhost:4200/styles.css"
							},
						},
					},
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						-- make lazydev completions top priority (see `:h blink.cmp`)
						score_offset = 100,
					},
				},
			},
		},
	}
}
