return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		dashboard = {
			enabled = true,
			preset = {
				header = [[
  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓▓█████ ▓█████▄
   ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓█   ▀ ▒██▀ ██▌
  ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░▒███   ░██   █▌
  ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ▒▓█  ▄ ░▓█▄   ▌
  ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒░▒████▒░▒████▓
  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░░░ ▒░ ░ ▒▒▓  ▒
  ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ░ ░  ░ ░ ▒  ▒
     ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░      ░    ░ ░  ░
           ░    ░  ░    ░ ░        ░   ░         ░      ░  ░   ░
                                  ░                          ░]],
				keys = {
				},
			},
			sections = {
				{ section = "header" },
			},
		},
		indent = {
			enabled = true,
			animate = {
				enabled = false
			},
			chunk = {
				enabled = true,
				-- only show chunk scopes in the current window
				only_current = false,
				priority = 200,
				hl = "SnacksIndentChunk", ---@type string|string[] hl group for chunk scopes
				char = {
					corner_top = "┌",
					corner_bottom = "└",
					-- corner_top = "╭",
					-- corner_bottom = "╰",
					horizontal = "─",
					vertical = "│",
					arrow = ">",
				},
			}
		},
		input = {
			enabled = true,
			backdrop = false,
			position = "float",
			border = "rounded",
			title_pos = "center",
			height = 1,
			width = 60,
			relative = "editor",
			noautocmd = true,
			row = 2,
			-- relative = "cursor",
			-- row = -3,
			-- col = 0,
			wo = {
				winhighlight =
				"NormalFloat:SnacksInputNormal,FloatBorder:SnacksInputBorder,FloatTitle:SnacksInputTitle",
				cursorline = false,
			},
			bo = {
				filetype = "snacks_input",
				buftype = "prompt",
			},
			--- buffer local variables
			b = {
				completion = false, -- disable blink completions in input
			},
			keys = {
				n_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "n", expr = true },
				i_esc = { "<esc>", { "cmp_close", "stopinsert" }, mode = "i", expr = true },
				i_cr = { "<cr>", { "cmp_accept", "confirm" }, mode = "i", expr = true },
				i_tab = { "<tab>", { "cmp_select_next", "cmp" }, mode = "i", expr = true },
				i_ctrl_w = { "<c-w>", "<c-s-w>", mode = "i", expr = true },
				i_up = { "<up>", { "hist_up" }, mode = { "i", "n" } },
				i_down = { "<down>", { "hist_down" }, mode = { "i", "n" } },
				q = "cancel",
			},
		},
		picker = { enabled = false },
		notifier = { enabled = true },
		quickfile = { enabled = false },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
}
