# NeoVim Cheatsheet

### Builtin:
`%` create new file\
`d` create new directory\
`D` delete directory\
`<ctrl> + l` redraw screen, removes search highlight\
`yy|Y` yank/copy\
`dd` delete\
`p` paste\
`P` paste, paste deleted\
`/` search\
`*` search for string when over it, search forward\
`#` search for string when over it, backward\
`N` search forward\
`n` search backward\
`<ctrl> + w, v|s` split window vertically or horizontally\
`<ctrl> + w, h|j|k|l` jump between split\
`<ctrl> + w, +|-|<|>` resize split window\
`u` undo\
`ctlr + r` redo\
`R` replace at cursor\
`v, y, p` enter into visual mode select text yank and paste\
`v, n(1,2,3,...), <|>` indent or unindent multiple lines\
`:s/foo/bar/`\
`:%s/foo/bar/g`\
`0` go to beginning of line\
`_` go to first character in line\
`$` go to end of line\
`%` go to open/close bracket\
`:buffers` list all open buffers\
`:bd n(1,2,3,...)` delete buffer with specified id\
`:bw n(1,2,3,...)` wipe buffer with specified id\
`zf` fold, from last line to top\
`zo` open and remove fold\
`zi` toggle fold\
`zfaB` fold block\
`gU` make uppercase\
`gu` make lowercase\
`<ctrl> + w + w` switch between windows\
`<ctrl> + o` go back to prev screen\
`tab` go to next screen\
`D` delete until cursor\
`:reg` list registers and select text to paste\
`v` in file exporer open the folder or file in a new vertical split\
`"+y` yank line(s) to the global registry\
`"+p` paste line from global registry `<backtick>` list all marks\
`<backtick> + [mark name]` - jumps to given mark\
`double <backtick>` - jumps between marks last two mark\
`m + [upper- or lowercase letter]` add a new mark\
`<ctrl> + w x` swap windows\
`K` show details\
`<ctrl> + w d` show diagnostic issue\
`ctrl+v` select lines `$` to go to end of line `A` to insert character to multiple line endings\
`P` insert before cursor\
select text then `J` remove new line characters\
select text then `gc` to toggle comments\
`dw` delete spaces before word until cursor\
`za` toggle fold\
`x` in normal mode - backspace\
`<ctrl> + w` in insert mode - delete word backward\
`d+i+w` - delete word that cursor is in\
`d+i+}` - delete contents of curlies\
`v+i+*` - does the same as the ones above, but instead of deleting it select the text\
`<ctrl> + v` to select the lines `$` to jump to line ending `A` to enter append mode - edit multiple line endings\
`"` - bring up the register and after selecting the text `p` can be used to paste it\
`<backtick>^` - jumps to the last insert location\
select text in normal mode using `v` then press `c` to delet the selected text and into insert mode\
when searching `gnc` can be used to change currently highlighted selection/search result\
when searching `cgn` can be used as above, but `.` will apply the same changes to the next search result\
`gcc` - toggle comment on single line\
after selecting text in normal mode `v` comments can be toggled using `gc`\
`:e!` - will remove all unsaved changes\

set file format from windows to unix\
`: e ++ff=dos `\
`: set ff=unix `\
`: w`\

* https://neovim.io/doc/user/motion.html#mark-motions
* https://github.com/nvim-telescope/telescope.nvim#default-mappings
* Check custom/remap.lua and plugins/cmp.lua

### Required binaries:
* https://github.com/BurntSushi/ripgrep
* https://github.com/tree-sitter/tree-sitter
* https://github.com/sharkdp/fd

### Plugins:
* https://github.com/hrsh7th/nvim-cmp
* https://github.com/olimorris/codecompanion.nvim
* https://github.com/tpope/vim-fugitive
* https://github.com/nvim-lualine/lualine.nvim
* https://github.com/neovim/nvim-lspconfig
* https://github.com/folke/noice.nvim
* https://github.com/hedyhli/outline.nvim
* https://github.com/nvim-telescope/telescope.nvim
* https://github.com/folke/tokyonight.nvim
* https://github.com/nvim-treesitter/nvim-treesitter
* https://github.com/mbbill/undotree
* https://github.com/folke/which-key.nvim
* https://github.com/folke/lazy.nvim

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

