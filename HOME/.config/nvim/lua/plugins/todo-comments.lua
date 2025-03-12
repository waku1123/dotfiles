-- TODOコメントを強調表示するプラグイン
return {
  "folke/todo-comments.nvim",
  lazy = true,
  event = "VeryLazy",
  dependencies = "nvim-lua/plenary.nvim",
  keys = {
    { ";t", function() require("todo-comments").jump_next() end, mode = "n", desc = "次の TODO コメントにジャンプ" },
    { ":t", function() require("todo-comments").jump_prev() end, mode = "n", desc = "前の TODO コメントにジャンプ"},
  },
  config = function()
    require("todo-comments").setup({
      signs = true,      -- show icons in the signs column
      sign_priority = 8, -- sign priority
      -- keywords recognized as todo comments
      keywords = {
        FIX  = { icon = "󱐑", color = "error",   alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "FAILED" } },
        TODO = { icon = "󰭹", color = "info" },
        HACK = { icon = "", color = "warning" },
        WARN = { icon = "󰭺", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = "󱎫",                    alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = "󰈙", color = "hint",    alt = { "INFO", "HINT" } },
        TEST = { icon = "", color = "test",    alt = { "TESTING", "PASSED"} },
        DOCS = { icon = "󰗚",                    alt = { "FYI", "DOC" } },
      },
      gui_style = {
        fg = "NONE",         -- The gui style to use for the fg highlight group.
        bg = "BOLD",         -- The gui style to use for the bg highlight group.
      },
      merge_keywords = true, -- when true, custom keywords will be merged with the defaults
      -- highlighting of the line containing the todo comment
      -- * before: highlights before the keyword (typically comment characters)
      -- * keyword: highlights of the keyword
      -- * after: highlights after the keyword (todo text)
      highlight = {
        multiline         = true,                    -- enable multine todo comments
        multiline_pattern = "^.",                    -- lua pattern to match the next multiline from the start of the matched keyword
        multiline_context = 10,                      -- extra lines that will be re-evaluated when changing a line
        before            = "",                      -- "fg" or "bg" or empty
        keyword           = "wide",                  -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after             = "fg",                    -- "fg" or "bg" or empty
        pattern           = [[.*<(KEYWORDS)\s*:]],   -- pattern or table of patterns, used for highlightng (vim regex)
        comments_only     = true,                    -- uses treesitter to match keywords in comments only
        max_line_len      = 400,                     -- ignore lines longer than this
        exclude           = {},                      -- list of file types to exclude highlighting
      },
      -- list of named colors where we try to extract the guifg from the
      -- list of highlight groups or use the hex color if hl not found as a fallback
      colors = {
        error   = { "DiagnosticError", "ErrorMsg", "#ff757f" },
        warning = { "DiagnosticWarn", "WarningMsg", "#ff966c" },
        info    = { "DiagnosticInfo", "#82aaff" },
        hint    = { "DiagnosticHint", "#41a6b5" },
        default = { "Identifier", "#c099ff" },
        test    = { "Identifier", "#ffc777" }
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
        -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    })
  end
}
