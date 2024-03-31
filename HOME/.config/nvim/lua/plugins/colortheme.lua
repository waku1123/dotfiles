-- カラーテーマ
return {
  "HoNamDuong/hybrid.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- require("hybrid").setup({
    --   terminal_colors = true,
    --   undercurl = true,
    --   underline = true,
    --   bold = true,
    --   italic = {
    --     strings = false,
    --     emphasis = true,
    --     comments = true,
    --     folds = true,
    --   },
    --   strikethrough = true,
    --   inverse = true,
    --   transparent = false,
    --   overrides = function(highlights, colors)
    --     local background = "#1d1f21"
    --     highlights.TelescopeNormal = {
    --       fg = colors.fg,
    --       bg = background,
    --     }
    --     highlights.TelescopeBorder = {
    --       fg = colors.fg_hard,
    --       bg = colors.bg,
    --     }
    --     highlights.TelescopeTitle = {
    --       fg = colors.fg_hard,
    --       bg = colors.bg,
    --       bold = true,
    --     }
    --   end,
    -- })
  },
  config = function()
    require("hybrid").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        folds = true,
      },
      strikethrough = true,
      inverse = true,
      transparent = false,
      overrides = function(highlights, colors)
        local background = "#1d1f21"
        highlights.TelescopeNormal = {
          fg = colors.fg,
          bg = background,
        }
        highlights.TelescopeBorder = {
          fg = colors.fg_hard,
          bg = colors.bg,
        }
        highlights.TelescopeTitle = {
          fg = colors.fg_hard,
          bg = colors.bg,
          bold = true,
        }
      end,
    })
    vim.cmd.colorscheme("hybrid")
  end,
}
-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha",
--       background = {
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true,
--       show_end_of_buffer = false,
--       dim_inactive = {
--         -- focusを失ったウィンドウの背景色を暗くする
--         enabled = true,
--         shade = "dark",
--         percentage = 1.0,
--       },
--       styles = {
--         comments = {}
--       },
--       integrations = {
--         aerial = true,
--         alpha = true,
--         fidget = true,
--         indent_blankline = {
--           enabled = true,
--           colored_indent_levels = true,
--         },
--         gitsigns = true,
--         hop = true,
--         markdown = true,
--         mason = true,
--         noice = true,
--         cmp = true,
--         dap = {
--           enabled = true,
--           enable_ui = true,
--         },
--         nvimtree = true,
--         treesitter = true,
--         telescope = {
--           enabled = true,
--         },
--         native_lsp = {
--           enabled = true,
--           virtual_text = {
--             errors = { "italic" },
--             hints = { "italic" },
--             warnings = { "italic" },
--             information = { "italic" },
--           },
--           underlines = {
--             errors = { "underline" },
--             hints = { "underline" },
--             warnings = { "underline" },
--             information = { "underline" },
--           },
--           inlay_hints = {
--             background = false,
--           },
--         },
--         -- notify = true,
--         sandwich = true,
--         which_key = true
--       }
--     })
--     vim.cmd [[colorscheme catppuccin]]
--   end
-- }
