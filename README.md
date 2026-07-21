# NeoVim Cheatsheet

* https://neovim.io/doc/user/motion.html#mark-motions
* https://github.com/nvim-telescope/telescope.nvim#default-mappings
* Check custom/remap.lua and plugins/cmp.lua

### LSP:
* https://github.com/neovim/nvim-lspconfig
* https://github.com/neovim/nvim-lspconfig#suggested-configuration
* https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
* https://langserver.org/
* https://microsoft.github.io/language-server-protocol/implementors/servers/

### Installing fonts:
`apt-get install fontconfig`\
`mkdir -p ~/.local/share/fonts`\
`cd ~/.local/share/fonts`\
`curl -O -L https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip`\
`unzip FiraCode.zip`\
`rm FiraCode.zip`\
`fc-cache -f -v`\

FiraCode has to be installed on the host system as well when using it with WSL.\
Set fira code nerd font as terminal font, for WSL show hidden fonts should be checked.

### Dependecies
[ripgrep](https://github.com/burntsushi/ripgrep)
[tree-sitter](https://github.com/tree-sitter/tree-sitter)
