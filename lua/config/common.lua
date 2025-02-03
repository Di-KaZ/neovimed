vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.o.exrc = true
vim.opt.laststatus = 3
vim.opt.tabstop = 4

local platform = vim.loop.os_uname().sysname

if string.find(platform, "Windows") then
	vim.opt.shell = '"C:\\Program Files\\Git\\bin\\bash.exe"'
	-- vim.opt.shell = '"C:\\Users\\moussa.fofana\\AppData\\Local\\Microsoft\\WindowsApps\\bash.exe"'
	--
end
-- vim.api.nvim_set_option("clipboard", "unnamedplus")
