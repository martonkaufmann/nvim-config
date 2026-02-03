return {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    build = ":TSUpdate",
    config = function () 
      require("nvim-treesitter").install({
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
        })
    end
}
