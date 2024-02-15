local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'folke/tokyonight.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
    },
    'nvim-treesitter/playground',
--[[
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    -- all of that is connected to the LSP
    -- https://github.com/williamboman/mason.nvim 
    use {"williamboman/mason.nvim"}
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    --]]
}, {})
