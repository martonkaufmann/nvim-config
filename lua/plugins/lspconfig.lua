return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require('lspconfig')

		-- npm install -g typescript typescript-language-server
		require'lspconfig'.tsserver.setup{}

		-- go install golang.org/x/tools/gopls@latest
		-- require'lspconfig'.gopls.setup{}

		-- composer global require vimeo/psalm
		-- require'lspconfig'.psalm.setup{}
	end
}
