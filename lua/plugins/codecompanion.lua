return {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    event = "VeryLazy",
    config = function()
        require("codecompanion").setup({
            interactions = {
                chat = {
                    adapter = "openai",
                    model = "gpt-5.5",
                },
                inline = {
                    adapter = "openai",
                    model = "gpt-5.3-codex",
                },
                cli = {
                    agent = "opencode",
                    agents = {
                        opencode = {
                            cmd = "opencode",
                            args = {},
                            description = "OpenCode CLI",
                            provider = "terminal",
                        },
                    },
                },
            },
            rules = {
                opts = {
                    chat = {
                        autoload = { "default" },
                    },
                },
                default = {
                    description = "Collection of common files for all projects",
                    files = {
                        "AGENT.md",
                        "AGENTS.md",
                        "instructions",
                        ".instructions",
                        ".agents",
                    },
                },
            },
            opts = {
                log_level = "DEBUG",
            },
        })
    end,
    dependencies = {
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

