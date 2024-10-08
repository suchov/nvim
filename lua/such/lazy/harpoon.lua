-- https://github.com/ThePrimeagen/harpoon

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")
		---@diagnostic disable-next-line: missing-parameter
		harpoon:setup()

        -- rewrite a key maping a bit
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        -- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<C-y>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-u>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-i>", function() harpoon:list():select(1) end)

    end,
    keys = {
        { "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
    },
}
