-- * コマンドを便利にするプラグイン
return {
  {
    "rapan931/lasterisk.nvim",
    event = { "BufReadPre" },
    keys = {
      {
        "*",
        function()
          require("lasterisk").search({ silent = true })
          if not vim.g.vscode then
            require("hlslens").start()
          end
        end,
        mode = "n",
        desc = "カーソル位置の単語を検索してハイライト",
      },
      {
        "g*",
        function()
          require("lasterisk").search({ is_whole = false, silent = true })
          if not vim.g.vscode then
            require("hlslens").start()
          end
        end,
        mode = { "n", "x" },
        desc = "単語区切りせずにカーソル位置の単語を検索してハイライト",
      },
    },
  },
}
