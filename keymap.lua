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
nmap("<leader>dt", function() require('dapui').toggle() end, "Toggle Debugger")
nmap("<leader>db", "DapToggleBreakpoint", "Toggle Breakpoint")
nmap("<leader>dc", "DapContinue", "Continue")
nmap("<leader>di", "DapStrpInto", "Into")
nmap("<leader>do", "DapStepOver", "Step Over")

-- Files management
nmap("<leader>fe", "lua MiniFiles.open()", "Find files")
nmap("<C-e>", "lua MiniFiles.open()", "Find files")
nmap("<leader>ff", function() require('telescope.builtin').find_files() end, "Find files")
nmap("<leader>fw", function() require('telescope.builtin').live_grep() end, "Find match")

-- Lsp
nmap("<S-k>", "Lspsaga hover_doc", "Hover")
nmap("gd", "Lspsaga finder def", "Declaration")
nmap("gr", "Lspsaga finder ref", "References")
nmap("ga", "Lspsaga code_action", "Code Actions")
nmap("gj", "Lspsaga diagnostic_jump_next", "Next diagnostic")
nmap("gk", "Lspsaga diagnostic_jump_prev", "Previous diagnostic")
nmap("<leader>gr", "Lspsaga rename", "Rename")
nmap("<leader>gd", function() require('telescope.builtin').diagnostics() end, "Diagnostics")
nmap("<leader>gs", function() require('telescope.builtin').lsp_document_symbols() end, "Document Symbol")
nmap("<leader>gS", function() require('telescope.builtin').lsp_workspace_symbols() end, "Workspace Symbols")

-- Git
nmap('<leader>cn', "Neogit", "Neogit")
nmap('<leader>co', 'GitConflictChooseOurs', "Accept Ours")
nmap('<leader>ct', 'GitConflictChooseTheirs', "Accept Theirs")
nmap('<leader>cb', 'GitConflictChooseBoth', "Accept Both")
nmap('<leader>c0', 'GitConflictChooseNone', "Accept none")
nmap('<leader>cj', 'GitConflictNextConflict', "Next Conflict")
nmap('<leader>ck', 'GitConflictPrevConflict', "Prev Conflict")
nmap('<leader>cl', 'GitConflictListQf', "Conflict List")

-- Buffers
nmap("<leader>bp", "BufferLinePick", "Jump to buffer")
nmap("<S-Tab>", "BufferLineCyclePrev", "Prev buffer")
nmap("<Tab>", "BufferLineCycleNext", "Next buffer")
nmap("<leader>bc", "lua MiniBuffermove.delete(0)", "Close buffer")

-- Theme
nmap("<leader>t", "Themery", "Themes Selector")
