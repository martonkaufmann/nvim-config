return {
	"neovim/nvim-lspconfig",
    event = "VeryLazy",
	config = function()
		-- npm install -g typescript typescript-language-server
        vim.lsp.enable("ts_ls")

        -- npm install -g @biomejs/biome
        vim.lsp.enable("biome")

        -- npm i -g vscode-langservers-extracted
        vim.lsp.enable("eslint")
        vim.lsp.enable("jsonls")

		-- go install golang.org/x/tools/gopls@latest
        vim.lsp.enable("gopls")

        -- lspconfig.gleam.setup{}

        -- npm install -g intelephense
        -- create license file intelephense/licence.txt
        vim.lsp.enable("intelephense")
        -- vim.lsp.enable("phpactor")
	end
}
