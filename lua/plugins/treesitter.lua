return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    branch = "master",
    build = ":TSUpdate",
    config = function () 
        require("nvim-treesitter.configs").setup({ -- Fixed: .configs
            -- Install these parsers
            ensure_installed = { -- Fixed: ensure_installed not install()
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

            -- Enable syntax highlighting - THIS IS REQUIRED
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            }
        })
    end
}
