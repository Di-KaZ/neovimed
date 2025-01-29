return {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require('mini.pairs').setup()
		require('mini.comment').setup()
		require('mini.files').setup()
		require('mini.pick').setup()
		require('mini.extra').setup()
	end
}
