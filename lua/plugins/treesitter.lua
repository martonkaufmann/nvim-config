return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "php", "go", "json", "csv", "tsv", "css" },
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
