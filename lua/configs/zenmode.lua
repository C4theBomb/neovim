local set = vim.keymap.set
require("zen-mode").setup({
    window = {
        width = 150,
        options = {}
    },
})

set("n", "<leader>zz", function()
    require("zen-mode").toggle()

    vim.wo.wrap = false
    vim.wo.number = true
    vim.wo.rnu = true
end)
