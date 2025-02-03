return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup({
			defualts = {
				file_ignore_patterns = {
					"nodes_modules"
				}
			}
		})
	end
}
