--- Calls require on files based on priority
--- @param plugins table
local function load_plugins(plugins)
	table.sort(plugins, function(a, b) return a.priority > b.priority end)
	for _, plugin in ipairs(plugins) do
		require("plugins." .. plugin.name)
	end
end

load_plugins(
	{
		--- base
		{ name = 'colorscheme',      priority = 1101 },
		{ name = "themery",          priority = 1001 },
		{ name = 'basics',           priority = 1000 },
		{ name = 'heirline',         priority = 50 },

		-- shortcut
		{ name = 'smart-splits',     priority = 50 },
		{ name = 'comment',          priority = 50 },
		{ name = 'pairs',            priority = 50 },
		{ name = 'splitjoin',        priority = 50 },
		{ name = 'buffermove',       priority = 50 },

		-- ui
		{ name = 'bufferline',       priority = 100 },
		{ name = 'animate',          priority = 100 },
		{ name = 'starter',          priority = 100 },
		{ name = 'hlchunk',          priority = 49 },
		-- { name = 'reactive',         priority = 50 },
		{ name = 'clue',             priority = 50 },
		{ name = 'highlight-colors', priority = 50 },
		{ name = 'surround',         priority = 50 },
		{ name = 'todo-comments',    priority = 50 },
		{ name = 'image',            priority = 500 },

		-- lsp
		{ name = 'lspconfig',        priority = 50 },
		{ name = 'lspsaga',          priority = 50 },
		{ name = 'cmp',              priority = 51 },
		{ name = 'flutter',          priority = 50 },
		{ name = 'conform',          priority = 50 },
		-- { name = 'codeium',          priority = 40 },
		{ name = 'copilot',          priority = 40 },
		{ name = 'treesitter',       priority = 110 },

		-- files management
		{ name = 'telescope',        priority = 50 },
		{ name = 'pick',             priority = 50 },
		{ name = 'files',            priority = 50 },
		{ name = 'extra',            priority = 50 },
		{ name = 'nvim-tree',        priority = 50 },


		-- debugging
		{ name = 'dap',              priority = 50 },

		-- git
		{ name = 'gitsigns',         priority = 50 },
		{ name = 'neogit',           priority = 50 },
		{ name = 'git-conflict',     priority = 50 },
	}
)
