return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
                "c", 
                "lua", 
                "vim", 
                "vimdoc", 
                "query", 
                "javascript", 
                "typescript", 
                "html", 
                "php", 
                "go", 
                "json", 
                "csv", 
                "tsv", 
                "css", 
                "dockerfile", 
                "gleam", 
                "tsx",
                "yaml",
                "regex",
                "bash"
          },
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
