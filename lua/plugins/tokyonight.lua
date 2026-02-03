return {
	"folke/tokyonight.nvim",
    event = "VeryLazy",
    config = function()
        require("tokyonight").setup({
            style = "night"
        })
	end
}
