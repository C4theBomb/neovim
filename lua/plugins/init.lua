return {
    { "sitiom/nvim-numbertoggle", lazy = false, },
    { "junegunn/gv.vim",          cmd = { "GV" } },
    { "mbbill/undotree",          cmd = { "UndotreeToggle" } },
    { "folke/trouble.nvim",       cmd = { "Trouble" }},
    { 'tpope/vim-fugitive', keys = { "<leader>gs", "gu", "gh" } },
    { "zbirenbaum/copilot.lua",   event = "InsertEnter",                             config = function() require("configs.copilot") end },
    { "nvim-tree/nvim-tree.lua",  cmd = { "NvimTreeToggle", "NvimTreeFocus" },       config = function() require("configs.nvimtree") end },
    { "folke/zen-mode.nvim",      keys = { "<leader>zz" },                           config = function() require("configs.zenmode") end },
    { "stevearc/conform.nvim",    config = function() require("configs.conform") end },
    { "zbirenbaum/copilot-cmp", config = function() require("copilot_cmp").setup() end },
    { "hrsh7th/nvim-cmp", dependencies = { "zbirenbaum/copilot-cmp" }, config = function() require("configs.lsp") end },
    { "kylechui/nvim-surround", event = "VeryLazy", config = function() require("configs.nvim-surround") end },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
        config = function() require("nvchad.configs.lspconfig").defaults() require("configs.lspconfig") end,
    },
    {
        "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" },
        keys = { "<leader>a", "<C-e>", "<C-j>", "<C-k>", "<C-l>", "<C-;>", "<leader><C-j>", "<leader><C-k>", "<leader><C-l>", "<leader><C-;>" },
        config = function() require("configs.harpoon") end,
    },
    {
        "kevinhwang91/nvim-ufo", lazy = false, dependencies = { "kevinhwang91/promise-async" },
        config = function() require("configs.ufo") end;
    },
}
