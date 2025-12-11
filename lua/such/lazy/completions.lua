-- lua/such/lazy/completions.lua

return {
  ---------------------------------------------------------------------------
  -- GitHub Copilot (Lua version, with model selection)
  ---------------------------------------------------------------------------
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    -- optional: run auth helper once from :Lazy if you like
    -- build = ":Copilot auth",
    opts = {
      -- disable built-in ghost text; we'll use cmp instead
      suggestion = { enabled = false },
      panel = { enabled = false },

      -- 👇 MODEL SELECTION LIVES HERE
      -- change this string to switch models
      server_opts_overrides = {
        settings = {
          advanced = {
            debug = {
              -- Examples (exact names may evolve):
              --   "gpt-5"
              --   "gpt-5.1"
              --   "gpt-5.1-codex"
              --   "gpt-5.1-codex-mini"
              --   "gpt-5.1-codex-max"
              --   "claude-sonnet-4.5"
              --   "claude-opus-4.5"
              --   "claude-haiku-4.5"
              --   "gemini-3-pro"
              --   "grok-code-fast-1"
              overrideEngine = "gpt-5.1-codex-max",
            },
          },
        },
      },
    },
  },

  ---------------------------------------------------------------------------
  -- Bridge Copilot → nvim-cmp
  ---------------------------------------------------------------------------
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },

  ---------------------------------------------------------------------------
  -- nvim-cmp core + sources
  ---------------------------------------------------------------------------
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "rafamadriz/friendly-snippets",
      "zbirenbaum/copilot-cmp",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),

          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),

        sources = cmp.config.sources({
          { name = "copilot",  group_index = 1 },
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "path" },
          { name = "buffer" },
        }),
      })

      -- (optional) cmdline completion examples
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })
    end,
  },
}

