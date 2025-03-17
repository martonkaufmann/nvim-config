return {
	"neovim/nvim-lspconfig",
    event = "VeryLazy",
	config = function()
		local lspconfig = require("lspconfig")

		-- npm install -g typescript typescript-language-server
		-- lspconfig.ts_ls.setup{
		--     single_file_support = false
		-- }

        -- npm install -g @biomejs/biome
		-- lspconfig.biome.setup{}

        -- npm i -g vscode-langservers-extracted
		-- lspconfig.eslint.setup{}

		-- go install golang.org/x/tools/gopls@latest
		-- lspconfig.gopls.setup{}

        -- lspconfig.gleam.setup{}

        -- npm install -g intelephense
        -- create license file intelephense/licence.txt
        -- lspconfig.intelephense.setup{}
	end
}
