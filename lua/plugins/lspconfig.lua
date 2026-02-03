return {
	"neovim/nvim-lspconfig",
    lazy = true,
	config = function()
		-- npm install -g typescript typescript-language-server
        vim.lsp.enable("ts_ls")

        -- npm install -g @biomejs/biome
        vim.lsp.enable("biome")

        -- npm i -g vscode-langservers-extracted
        vim.lsp.enable("eslint")
        vim.lsp.enable("jsonls")

        -- npm install -g svelte-language-server
        vim.lsp.enable('svelte')

		-- go install golang.org/x/tools/gopls@latest
        vim.lsp.enable("gopls")

        vim.lsp.enable("gleam")

        -- npm install -g intelephense
        -- create license file intelephense/licence.txt
        -- vim.lsp.enable("intelephense")
        -- vim.lsp.enable("phpactor")
	end
}
