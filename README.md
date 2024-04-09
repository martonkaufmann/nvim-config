# NeoVim Cheatsheet

### Builtin:
`%` create new file\
`d` create new directory\
`D` delete directory\
`ctrl + l` redraw screen, removes search highlight\
`yy|Y` yank/copy\
`dd` delete\
`p` paste\
`P` paste, paste deleted \
`/` search\
`*` search for string when over it, search forward\
`#` search for string when over it, backward\
`N` search forward\
`n` search backward\
`ctrl + w, v|s` split window vertically or horizontally\
`ctrl + w, h|j|k|l` jump between split\
`ctrl + w, +|-|<|>` resize split window\
`u` undo\
`ctlr + r` redo\
`R` replace at cursor\
`v, y, p` enter into visual mode select text yank and paste\
`v, n(1,2,3,...), <|>` indent or unindent multiple lines\
`:s/foo/bar/`\
`:%s/foo/bar/g`\
`0` go to beginning of line\
`_` go to first character in line\
`$` go to end of line\
`%` go to open/close bracket\
`:buffers` list all open buffers\
`:bd n(1,2,3,...)` delete buffer with specified id\
`:bw n(1,2,3,...)` wipe buffer with specified id\
`zf` fold, from last line to top\
`zo` open and remove fold\
`zi` toggle fold\
`zfaB` fold block\
`gU` make uppercase\
`gu` make lowercase\
`ctrl + w + w` switch between windows\
`ctrl + o` go back to prev screen\
`tab` go to next screen\
`D` delete until cursor\
`:reg` list registers and select text to paste\
`v` in file exporer open the folder or file in a new vertical split\
`"+y` yank line(s) to the global registry\
`"+p` paste line from global registry
`<backtick>` list all marks\
`<backtick> + [mark name]` - jumps to given mark\
`double <backtick>` - jumps between marks last two marks\
`m + [upper- or lowercase letter]` add a new mark\
`ctrl + w x` swap windows

* https://neovim.io/doc/user/motion.html#mark-motions
* https://github.com/nvim-telescope/telescope.nvim#default-mappings
* Check custom/remap.lua and plugins/cmp.lua

### Plugins:
* https://github.com/folke/lazy.nvim
* https://github.com/folke/which-key.nvim
* https://github.com/mbbill/undotree
* https://github.com/nvim-treesitter/nvim-treesitter
* https://github.com/nvim-lualine/lualine.nvim
* https://github.com/nvim-tree/nvim-web-devicons
* https://github.com/hrsh7th/nvim-cmp
* https://github.com/nvim-telescope/telescope.nvim

### LSP:
* https://github.com/neovim/nvim-lspconfig
* https://github.com/neovim/nvim-lspconfig#suggested-configuration
* https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
* https://langserver.org/
* https://microsoft.github.io/language-server-protocol/implementors/servers/

### Installing languages:
* https://go.dev/doc/install
* https://github.com/nodesource/distributions#installation-instructions

### Installing neovim:
`curl -O -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz`\
`mkdir -p ~/.local/bin`\
`tar -xzf nvim-linux64.tar.gz -C ~/.local/bin`\
`rm nvim-linux64.tar.gz`\
`apt-get install build-essential` - for nvim-treesitter\
`apt-get install ripgrep` - for telescope\
`git clone git@github.com:martonkaufmann/nvim-config.git ~/.config/nvim`

Add "export PATH=$PATH:~/.local/bin/nvim-linux64/bin" to the ~/.bashrc

### Installing fonts:
`apt-get install fontconfig`\
`mkdir -p ~/.local/share/fonts`\
`cd ~/.local/share/fonts`\
`curl -O -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip`\
`unzip FiraCode.zip`\
`rm FiraCode.zip`\
`fc-cache -f -v`\

FiraCode has to be installed on the host system as well when using it with WSL.\
Set fira code nerd font as terminal font, for WSL show hidden fonts should be checked.

### Install lazygit:
https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md

`curl -O -L https://github.com/jesseduffield/lazygit/releases/download/v0.40.2/lazygit_0.40.2_Linux_x86_64.tar.gz`\
`mkdir -p ~/.local/bin/lazygit`\
`tar -xzf lazygit_0.40.2_Linux_x86_64.tar.gz -C ~/.local/bin/lazygit`\
`rm lazygit_0.40.2_Linux_x86_64.tar.gz`

Add "export PATH=$PATH:~/.local/bin/lazygit" to the ~/.bashrc
