
return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {
            { "williamboman/mason.nvim" },
        },
        config = function()
            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.black,
                    -- I've been seeing a lot of duplicate erorrs, seems pyright supports a lot of this stuff now.
                    -- require("null-ls").builtins.diagnostics.ruff,
                    -- require("null-ls").builtins.diagnostics.mypy,
                },
                on_attach = function(client, bufnr)
                    vim.api.nvim_clear_autocmds({
                        group = augroup,
                        buffer = bufnr,
                    })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({bufnr = bufnr})
                        end,
                    })
                end,
            })
        end,
    }
}
