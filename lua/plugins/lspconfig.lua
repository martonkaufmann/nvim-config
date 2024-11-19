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

        lspconfig.templ.setup{}

        -- Prefer this one
        -- https://github.com/vimeo/psalm/blob/5.x/docs/running_psalm/installation.md
        -- Recommended to install globally in container using the followign command:
        -- composer global require vimeo/psalm --no-interaction
        -- lspconfig.psalm.setup{}

        -- npm install -g intelephense
        -- create license file intelephense/licence.txt
        lspconfig.intelephense.setup{}
	end
}
