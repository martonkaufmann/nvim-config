local lazy = require("lazy")
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file explorer" })

-- Tabs
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew, { desc = "Open a new tab" })
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose, { desc = "Close tab" })
vim.keymap.set("n", "<leader>to", vim.cmd.tabonly, { desc = "Close all other tabs" })
vim.keymap.set("n", "<leader>th", function()
    vim.cmd.tabmove("-1")
end, { desc = "Move tab to the left" })
vim.keymap.set("n", "<leader>tl", function()
    vim.cmd.tabmove("+1")
end, { desc = "Move tab to the right" })
vim.keymap.set("n", "<leader>ts", '<cmd>tab split<CR>', { desc = "Open tab in new buffer" })

-- Lazy
vim.keymap.set("n", "<leader>lh", lazy.home, { desc = "Open lazy home" })

-- Telescope
vim.keymap.set("n", "<leader>pf", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>pg", telescope.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>pb", telescope.buffers, { desc = "List buffers" })
vim.keymap.set("n", "<leader>ph", telescope.help_tags, { desc = "List telescope help tags" })
vim.keymap.set("n", "<leader>ps", telescope.git_files, { desc = "List git files" })
vim.keymap.set("n", "<leader>pr", telescope.resume, { desc = "Resume" })
vim.keymap.set("n", "<leader>pc", telescope.grep_string, { desc = "Grep string under custor" })
vim.keymap.set("n", "<leader>pm", telescope.marks, { desc = "List marks" })
vim.keymap.set("n", "<leader>pv", telescope.registers, { desc = "List registers" })


vim.keymap.set("n", "<leader>pd", function()
  local cwd = vim.fn.input("Select directory: ", "", "dir")

  if cwd == "" or cwd == nil then
    print("No directory selected")
    return
  end

  print("Selected directory: " .. cwd)

  vim.keymap.set("n", "<leader>pf", function()
    telescope.find_files({ cwd = cwd })
  end, { desc = "Find files" })
  vim.keymap.set("n", "<leader>pg", function()
    telescope.live_grep({ cwd = cwd })
  end, { desc = "Live grep" })

end, { desc = "Change telescope find files and live grep directory" })

-- Undotree
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Open undotree" })

-- LSP
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, { desc = "Go to next diagnostic issue" })
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, { desc = "Go to previous diagnostic issue" })
vim.keymap.set("n", "<leader>da", vim.diagnostic.setloclist, { desc = "Show all diagnostic issues" })

-- Git, fugitive.vim
vim.keymap.set("n", "<leader>Gd", "<cmd>G diff<CR>", { desc = "Git diff" })
vim.keymap.set("n", "<leader>Gb", "<cmd>G blame<CR>", { desc = "Git blame" })
vim.keymap.set("n", "<leader>Gc", telescope.git_commits, { desc = "Git commits" })
vim.keymap.set("n", "<leader>Gr", telescope.git_branches, { desc = "Git branches" })
vim.keymap.set("n", "<leader>Gs", telescope.git_status, { desc = "Git status" })

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
    vim.keymap.set("n", "gD", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Go to type definition" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
    vim.keymap.set("n", "gk", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Show definition" })
    vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Show signature helper" })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "Show references" })
    vim.keymap.set("n", "gn", vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
    vim.keymap.set("n", "gs", vim.lsp.buf.document_symbol, { buffer = ev.buf, desc = "Document symbols" })
    vim.keymap.set("n", "gF", function()
      vim.lsp.buf.format { async = true }
    end, { buffer = ev.buf, desc = "Format" })
    vim.keymap.set("n", "<leader>go", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
    vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { buffer = ev.buf, desc = "Add to workspace" })
    vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { buffer = ev.buf, desc = "Remove from workspace" })
    vim.keymap.set("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { buffer = ev.buf, desc = "List workspaces" })
    -- TODO: Check if these are even required
    --vim.keymap.set("n", "<leader>D", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration" })
    --vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})
