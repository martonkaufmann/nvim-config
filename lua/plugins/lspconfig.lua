return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		-- npm install -g typescript typescript-language-server
		lspconfig.tsserver.setup{}

		-- go install golang.org/x/tools/gopls@latest
		lspconfig.gopls.setup{}

        lspconfig.gleam.setup{}

        lspconfig.templ.setup{}
        -- This is necessary for other LSPs to "pick up" on .templ files.
        vim.filetype.add({ extension = { templ = "templ" } })

        -- Prefer this one
        -- https://github.com/vimeo/psalm/blob/5.x/docs/running_psalm/installation.md
        -- Recommended to install globally in container using the followign command:
        -- composer global require vimeo/psalm --no-interaction
        -- lspconfig.psalm.setup{}

        -- npm install -g intelephense
        lspconfig.intelephense.setup{}
	end
}
