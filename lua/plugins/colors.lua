return {
    {
        "folke/tokyonight.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
            vim.cmd([[highlight Comment guifg=#7799cc]])
            vim.cmd([[highlight LineNr guifg=#eeeeee]])
            vim.cmd([[highlight LineNrAbove guifg=#aaccff]])
            vim.cmd([[highlight LineNrBelow guifg=#aaccff]])
        end,
    },
}
