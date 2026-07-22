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
            "php",
            "json",
            "css",
            "dockerfile",
            "gleam",
            "tsx",
            "blade"
        })
    end
}
