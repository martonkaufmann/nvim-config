return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      require("nvim-treesitter").setup({
          ensure_installed = { 
                "c", 
                "lua", 
                "vim", 
                "vimdoc", 
                "query", 
                "javascript", 
                "typescript", 
                "svelte",
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
