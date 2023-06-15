# Copied from LazyVim, not sure how else to achieve the telescope imports.
local Util = require("util")

return {
    {
        "nvim-telescope/telescope.nvim",
        commit = vim.fn.has("nvim-0.9.0") == 0 and "057ee0f8783" or nil,
        cmd = "Telescope",
        version = false, -- telescope did only one release, so use HEAD for now
        keys = {
            { "<leader>fb",  "<cmd>Telescope buffers show_all_buffers=true<cr>",   desc = "Switch Buffer" },
            { "<leader>fw",  Util.telescope("live_grep"),                          desc = "Grep (root dir)" },
            { "<leader>:",   "<cmd>Telescope command_history<cr>",                 desc = "Command History" },
            { "<leader>fe",  Util.telescope("find_files"),                         desc = "Find Files (everything)" },
            -- Not sure what the difference is with this and the top one.
            -- { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader>ff",  Util.telescope("git_files"),                          desc = "Find Files (root dir)" },
            { "<leader>fF",  Util.telescope("find_files", { cwd = false }),        desc = "Find Files (cwd)" },
            { "<leader>fr",  "<cmd>Telescope oldfiles<cr>",                        desc = "Recent" },
            { "<leader>fR",  Util.telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
            { "<leader>fif", "<cmd>Telescope current_buffer_fuzzy_find<cr>",       desc = "Buffer" },
            { "<leader>fh",  "<cmd>Telescope help_tags<cr>",                       desc = "Help Pages" },
            {
                "<leader>fs",
                Util.telescope("lsp_document_symbols", {
                    symbols = {
                        "Class",
                        "Function",
                        "Method",
                        "Constructor",
                        "Interface",
                        "Module",
                        "Struct",
                        "Trait",
                        "Field",
                        "Property",
                    },
                }),
                desc = "Goto Symbol",
            },
            {
                "<leader>fS",
                Util.telescope("lsp_dynamic_workspace_symbols", {
                    symbols = {
                        "Class",
                        "Function",
                        "Method",
                        "Constructor",
                        "Interface",
                        "Module",
                        "Struct",
                        "Trait",
                        "Field",
                        "Property",
                    },
                }),
                desc = "Goto Symbol (Workspace)",
            },
        },
        opts = {
            defaults = {
                file_ignore_patterns = { "node_modules" },
                prompt_prefix = " ",
                selection_caret = " ",
                mappings = {
                    i = {
                        ["<C-j>"] = function(...)
                            return require("telescope.actions").cycle_history_next(...)
                        end,
                        ["<C-k>"] = function(...)
                            return require("telescope.actions").cycle_history_prev(...)
                        end,
                        ["<C-]>"] = function(...)
                            return require("telescope.actions").preview_scrolling_down(...)
                        end,
                        ["<C-[>"] = function(...)
                            return require("telescope.actions").preview_scrolling_up(...)
                        end,
                        ["<Esc>"] = function(...)
                            return require("telescope.actions").close(...)
                        end,
                    },
                    n = {
                        ["q"] = function(...)
                            return require("telescope.actions").close(...)
                        end,
                    },
                },
            },
        },
    },
}
