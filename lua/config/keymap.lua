vim.g.mapleader = " "

local map = vim.keymap.set

--- sets a normal keymap preprending <CMD> and appending <CR> with a description
--- @param keymap string 	
--- @param cmd string 	| function
--- @param desc string 	
function nmap(keymap, cmd, desc)
	if type(cmd) == "string" then
		map("n", keymap, "<CMD>" .. cmd .. "<CR>", { desc = desc })
	else
		map("n", keymap, cmd, { desc = desc })
	end
end

-- Debugger
-- nmap("<leader>dt", function() require('dapui').toggle() end, "Toggle Debugger")
-- nmap("<leader>db", "DapToggleBreakpoint", "Toggle Breakpoint")
-- nmap("<leader>dc", "DapContinue", "Continue")
-- nmap("<leader>di", "DapStrpInto", "Into")
-- nmap("<leader>do", "DapStepOver", "Step Over")

-- Files management
nmap("<C-e>", function() require('mini.files').open() end, "Find files")
nmap("<leader>ff", function() Snacks.picker.smart() end, "Find files")
nmap("<leader>fk", function() Snacks.picker.keymaps({ preview = "none", layout = { preset = 'vscode' } }) end,
	"Find keymap")
nmap("<leader>fw", function() Snacks.picker.grep() end, "Find match")

-- Lsp
nmap("<S-k>", "Lspsaga hover_doc", "Hover")
nmap("gd", "Lspsaga finder def", "Declaration")
nmap("gr", "Lspsaga finder ref", "References")
nmap("ga", "Lspsaga code_action", "Code Actions")
nmap("gj", "Lspsaga diagnostic_jump_next", "Next diagnostic")
nmap("gk", "Lspsaga diagnostic_jump_prev", "Previous diagnostic")
nmap("<leader>gr", "Lspsaga rename", "Rename")
nmap("<leader>gd", function() Snacks.picker.diagnostics() end, "Diagnostics")
nmap("<leader>gs", function() Snacks.picker.lsp_symbols() end, "Document Symbol")
nmap("<leader>gS", function() Snacks.picker.lsp_workspace_symbols() end, "Workspace Symbols")

-- Git
-- nmap('<leader>cn', "Neogit", "Neogit")
-- nmap('<leader>co', 'GitConflictChooseOurs', "Accept Ours")
-- nmap('<leader>ct', 'GitConflictChooseTheirs', "Accept Theirs")
-- nmap('<leader>cb', 'GitConflictChooseBoth', "Accept Both")
-- nmap('<leader>c0', 'GitConflictChooseNone', "Accept none")
-- nmap('<leader>cj', 'GitConflictNextConflict', "Next Conflict")
-- nmap('<leader>ck', 'GitConflictPrevConflict', "Prev Conflict")
-- nmap('<leader>cl', 'GitConflictListQf', "Conflict List")
nmap('<leader>cb', function() require('snacks').git.blame_line() end, 'Git Blame')

-- Buffers
nmap("<leader>bp", "BufferLinePick", "Jump to buffer")
nmap("<S-Tab>", "BufferLineCyclePrev", "Prev buffer")
nmap("<Tab>", "BufferLineCycleNext", "Next buffer")
nmap("<leader>bc", function() require('mini.bufremove').delete(0) end, "Close buffer")

-- SmartSplits
nmap('<A-h>', require('smart-splits').resize_left, "Resize left")
nmap('<A-j>', require('smart-splits').resize_down, "Resize down")
nmap('<A-k>', require('smart-splits').resize_up, "Resize up")
nmap('<A-l>', require('smart-splits').resize_right, "Resize right")

-- moving between splits
nmap('<C-h>', require('smart-splits').move_cursor_left, "Move to left")
nmap('<C-j>', require('smart-splits').move_cursor_down, "Move to down")
nmap('<C-k>', require('smart-splits').move_cursor_up, "Move to up")
nmap('<C-l>', require('smart-splits').move_cursor_right, "Move to right")
nmap('<C-\\>', require('smart-splits').move_cursor_previous, "Previous split")

-- swapping buffers between windows
nmap('<leader><leader>h', require('smart-splits').swap_buf_left, "Swap left")
nmap('<leader><leader>j', require('smart-splits').swap_buf_down, "Swap down")
nmap('<leader><leader>k', require('smart-splits').swap_buf_up, "Swap up")
nmap('<leader><leader>l', require('smart-splits').swap_buf_right, "Swap right")


nmap('<leader>t', function() require('snacks').terminal() end, 'Show terminal')
