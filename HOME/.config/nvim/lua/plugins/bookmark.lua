-- BookMark Plugin
return {
  "tomasky/bookmarks.nvim",
  lazy = true,
  event = { "VimEnter" },
  config = function()
    local wk = require("which-key")
    require("bookmarks").setup({
      save_file = vim.fn.stdpath("data") .. "/bookmarks",
      keywords = {
        ["@t"] = " ", -- mark annotation startswith @t ,signs this icon as `Todo`
        ["@w"] = " ", -- mark annotation startswith @w ,signs this icon as `Warn`
        ["@f"] = "󰢷 ", -- mark annotation startswith @f ,signs this icon as `Fix`
        ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
      },
    })
    wk.add({
      {
        "<Leader>bmm",
        function()
          require("bookmarks").bookmark_toggle()
        end,
        mode = { "n" },
        icon = "󰃅",
        desc = "ブックマークをトグル",
      },
      {
        "<Leader>bmi",
        function()
          require("bookmarks").bookmark_ann()
        end,
        mode = { "n" },
        icon = "󱚌",
        desc = "ブックマークの注釈を追加/編集",
      },
      {
        "<Leader>bml",
        function()
          require("bookmarks").bookmark_list()
        end,
        mode = { "n" },
        icon = "󰸕",
        desc = "QuickFix にブックマーク一覧を表示",
      },
      {
        "<Leader>bmj",
        function()
          require("bookmarks").bookmark_next()
        end,
        mode = { "n" },
        icon = "󰜮",
        desc = "次のブックマークにジャンプ",
      },
      {
        "<Leader>bmk",
        function()
          require("bookmarks").bookmark_prev()
        end,
        mode = { "n" },
        icon = "󰜷",
        desc = "前のブックマークにジャンプ",
      },
      {
        "<Leader>bmc",
        function()
          require("bookmarks").bookmark_clean()
          vim.notify("Clear Bookmarks in Local Buffer")
        end,
        mode = { "n" },
        icon = "󰧎",
        desc = "ローカルバッファーのブックマークを除去",
      },
      {
        "<Leader>bmx",
        function()
          require("bookmarks").bookmark_clear_all()
          vim.notify("Clear All Bookmarks")
        end,
        mode = { "n" },
        icon = "󰓊",
        desc = "全てのブックマークを除去",
      },
    })
  end,
}
