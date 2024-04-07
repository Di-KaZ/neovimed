require("mini.comment").setup({
	options = {
		custom_commentstring = function(ref)
			-- handle svelte comments using tree-sitter
			-- beacause svelte has different comment syntax
			-- in script tag and html tag
			-- so using tree-sitter check if cursors pos is not in <script>
			-- then use <!-- -->
			-- else use default mini-comment
			return MiniComment.get_commentstring(ref)
		end,
	},
	mappings = {
		-- Toggle comment (like `gcip` - comment inner paragraph) for both
		-- Normal and Visual modes
		comment = '',

		-- Toggle comment on current line
		comment_line = '<C-/>',

		-- Toggle comment on visual selection
		comment_visual = '<C-/>',

		-- Define 'comment' textobject (like `dgc` - delete whole comment block)
		-- Works also in Visual mode if mapping differs from `comment_visual`
		textobject = '',
	},
})
