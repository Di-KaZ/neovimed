return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			extra_groups = {
				"lualine_z_normal",
				"lualine_c_normal",
				"lualine_b_normal",
				"lualine_c_12",
				"lualine_z_16",
				"lualine_x_2",
				"lualine_c_9",
				"lualine_b_4"
			},
		})
	end
}
