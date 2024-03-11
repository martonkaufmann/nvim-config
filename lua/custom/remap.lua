local lazy = require("lazy")
local telescope = require("telescope.builtin")

-- Built in
vim.keymap.set("n", "<C-e>", vim.cmd.Ex, { desc = "Open file explorer" })
-- TODO: Check and debug
vim.keymap.set("n", "<leader>t", function()
    vim.cmd.tabnew(vim.fn.input("", "", "file"))
end, { desc = "Open file in new tab" })
 
-- Lazy
vim.keymap.set("n", "<leader>lh", lazy.home, { desc = "Open lazy home" })

-- Telescope
vim.keymap.set("n", "<leader>tf", telescope.find_files, { desc = "Find files" })
-- TODO: Check and debug
vim.keymap.set("n", "<leader>tF", function()
    -- https://neovim.io/doc/user/builtin.html#input()
    -- https://github.com/neovim/neovim/blob/master/runtime/doc/usr_41.txt#L974
    telescope.find_files({ search_dirs = {vim.fn.input("", "", "dir")} }) 
end, { desc = "Find files in folder" })
vim.keymap.set("n", "<leader>tg", telescope.live_grep, { desc = "Live grep" })
-- TODO: Check and debug
vim.keymap.set("n", "<leader>tG", function()
    -- https://neovim.io/doc/user/builtin.html#input()
    -- https://github.com/neovim/neovim/blob/master/runtime/doc/usr_41.txt#L974
    telescope.live_grep({ search_dirs = {vim.fn.input("", "", "dir")} }) 
end, { desc = "Live grep in folder" })

vim.keymap.set("n", "<leader>tb", telescope.buffers, { desc = "List buffers" })
vim.keymap.set("n", "<leader>th", telescope.help_tags, { desc = "List telescope help tags" })
vim.keymap.set("n", "<leader>ts", telescope.git_files, { desc = "List git files" })

-- Undotree
vim.keymap.set("n", "<leader><F12>", vim.cmd.UndotreeToggle, { desc = "Open undotree" })

-- LSP
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, { desc = "Go to next diagnostic issue" })
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, { desc = "Go to previous diagnostic issue" })
vim.keymap.set("n", "<leader>da", vim.diagnostic.setloclist, { desc = "Show all diagnostic issues" })

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    --vim.keymap.set("n", "<leader>D", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration" })
    vim.keymap.set("n", "gD", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Go to type definition" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
    vim.keymap.set("n", "gk", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Show definition" })
    vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Show signature helper" })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "Show references" })
    vim.keymap.set("n", "gn", vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gs", vim.lsp.buf.document_symbol, { buffer = ev.buf, desc = "Document symbols" })
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format { async = true }
    end, { buffer = ev.buf, desc = "Format" })
    vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { buffer = ev.buf, desc = "Add to workspace" })
    vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { buffer = ev.buf, desc = "Remove from workspace" })
    vim.keymap.set("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { buffer = ev.buf, desc = "List workspaces" })
  end,
})
