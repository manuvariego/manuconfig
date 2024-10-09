return {
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     priority = 1000,
    --     config = function()
    --         require("catppuccin").setup({
    --             flavour = "mocha",
    --
    --         })
    --         vim.cmd([[colorscheme catppuccin]])
    --     end,
    -- }
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "moon"
            })
            vim.cmd([[colorscheme rose-pine]])
        end,


    }

    -- {
    --
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         require("gruvbox").setup({
    --         })
    --         vim.o.background = "dark"
    --         vim.cmd([[colorscheme gruvbox]])
    --     end,
    -- }




    -- {
    --   "neanias/everforest-nvim",
    --   version = false,
    --   lazy = false,
    --   priority = 1000, -- make sure to load this before all the other start plugins
    --   -- Optional; default configuration will be used if setup isn't called.
    --   config = function()
    --     require("everforest").setup({
    --       -- Your config here
    --     })
    --     vim.cmd([[colorscheme everforest]])
    --   end,
    -- },
    --
    -- {
    --   "folke/tokyonight.nvim",
    --   lazy = false,
    --   priority = 1000,
    --   opts = {},
    --   config = function ()
    --     require("tokyonight").setup({
    --       style = "storm"
    --
    --
    --     })
    --     vim.cmd([[colorscheme tokyonight]])
    --   end,
    -- },

}
