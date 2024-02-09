return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		-- npm install -g typescript typescript-language-server
		require("lspconfig").tsserver.setup{}

		-- go install golang.org/x/tools/gopls@latest
		-- require("lspconfig").gopls.setup{}

        -- https://phpactor.readthedocs.io/en/master/usage/standalone.html
		-- require("lspconfig").phpactor.setup{
        --    on_attach = on_attach,
        --    init_options = {
        --        ["language_server_phpstan.enabled"] = false,
        --        ["language_server_psalm.enabled"] = false,
        --    }            
        -- }

        -- https://github.com/vimeo/psalm/blob/5.x/docs/running_psalm/installation.md
        -- Recommended to install globally in container using the followign command:
        -- composer global require vimeo/psalm --no-interaction
        -- require("lspconfig").psalm.setup{}
	end
}
