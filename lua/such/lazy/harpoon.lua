-- https://github.com/ThePrimeagen/harpoon

--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")

return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")
		---@diagnostic disable-next-line: missing-parameter
		harpoon:setup()

        --vim.keymap.set("n", "<leader>a", mark.add_file)
        --vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
        --vim.keymap.set("n", "<C-y>", function() ui.nav_file(1) end)
        --vim.keymap.set("n", "<C-i>", function() ui.nav_file(2) end)
        --vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        --vim.keymap.set("n", "<C-m>", function() ui.nav_file(4) end)
    end,
        keys = {
            { "<leader>A", function() require("harpoon"):list():append() end, desc = "harpoon file", },
            { "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
            { "<C-y>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 3", },
            { "<C-i>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 4", },
            { "<C-n>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 1", },
            { "<C-m>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 2", },
        },
}
