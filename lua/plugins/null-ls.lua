return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {
            { "williamboman/mason.nvim" },
        },
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.black,
                    -- I've been seeing a lot of duplicate erorrs, seems pyright supports a lot of this stuff now.
                    -- require("null-ls").builtins.diagnostics.ruff,
                    -- require("null-ls").builtins.diagnostics.mypy,
                }
            })
        end,
    }
}
