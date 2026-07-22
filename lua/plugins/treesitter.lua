return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function () 
        require("nvim-treesitter").install({
            "javascript",
            "typescript",
            "svelte",
            "html",
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
            "bash",
            "blade"
        })
    end
}
