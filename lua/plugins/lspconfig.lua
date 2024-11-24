return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		-- npm install -g typescript typescript-language-server
		lspconfig.ts_ls.setup{
            single_file_support = false
        }

		-- go install golang.org/x/tools/gopls@latest
		lspconfig.gopls.setup{}

        lspconfig.gleam.setup{}

        lspconfig.svelte.setup{}

        -- npm install -g intelephense
        -- create license file intelephense/licence.txt
        lspconfig.intelephense.setup{}
	end
}
