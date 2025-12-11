return {
    "olimorris/codecompanion.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
        require("codecompanion").setup({
            -- TODO: Remove ignore warnings after update
            ignore_warnings = true,
            strategies = {
                chat = {
                    adapter = "copilot",
                },
                inline = {
                    adapter = "copilot",
                },
            },
            memory = {
                opts = {
                    chat = {
                        enabled = true,
                    },
                },
                default = {
                    description = "Collection of common files for all projects",
                    files = {
                        "AGENT.md",
                        "AGENTS.md",
                        "instructions",
                    },
                },
            },
        })
    end,
    dependencies = {
        "github/copilot.vim",
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        {
            "MeanderingProgrammer/render-markdown.nvim",
            ft = { "markdown", "codecompanion" },
            latext = { enabled = false },
        },
        {
            "HakonHarnes/img-clip.nvim",
            opts = {
                filetypes = {
                    codecompanion = {
                        prompt_for_file_name = false,
                        template = "[Image]($FILE_PATH)",
                        use_absolute_path = true,
                    },
                },
            },
        },
    },
}

