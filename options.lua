vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.o.exrc = true
vim.opt.laststatus = 3
vim.opt.tabstop = 4
vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.opt.pumheight = 10

SIGNS = { Error = " ", Warn = " ", Hint = "󰛨 ", Info = " " }

for type, icon in pairs(SIGNS) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	signs        = true,
	virtual_text = false
	-- virtual_lines = {
	-- only_current_line = true
	-- }
})
