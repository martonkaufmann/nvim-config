return {
	"folke/tokyonight.nvim",
    opts = {},
    config = function()
        require("tokyonight").setup({
            style = "night"
        })
	end
}
