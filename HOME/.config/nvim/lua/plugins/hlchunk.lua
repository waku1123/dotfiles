-- インデントガイドを表示するプラグイン
return {
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  config = function()
    local color_palette = require("tokyonight.colors").setup()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        notify = true,
        use_treesitter = true,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = ">",
        },
        style = {
          { fg = color_palette.blue1 }, -- #2ac3de
          { fg = color_palette.red1 }, -- #db4b4b
        },
        textobject = "",
        max_file_size = 1024 * 1024,
        error_sign = true,
      },
      indent = {
        enable = true,
        exclude_filetypes = {
          "", -- 空のファイルタイプを対象外にしないとエラー
        },
        use_treesitter = true,
        chars = { "│" },
        style = {
          -- { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") },
          { fg = color_palette.fg_gutter },
          -- { bg = color_palette.bg_dark },
          -- { bg = color_palette.bg_dark1 },
        },
      },
      line_num = {
        enable = true,
        use_treesitter = true,
        style = color_palette.magenta, -- #bb9af7
      },
      -- FIXME: blank が正しく機能しないのはプラグインバグらしい。https://github.com/shellRaining/hlchunk.nvim/issues/123
      blank = {
        enable = true,
        chars = { "" },
        style = {
          -- vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
          { fg = color_palette.fg_gutter },
          -- { bg = color_palette.bg_dark },
          -- { bg = color_palette.bg_dark1 },
        },
      },
    })
  end,
}
