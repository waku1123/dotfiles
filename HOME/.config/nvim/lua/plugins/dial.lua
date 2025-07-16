-- 様々な値をインクリメント/デクリメントできるようにするプラグイン
return {
  {
    "monaqa/dial.nvim",
    keys = {
      { "<C-a>", "<Plug>(dial-increment)", mode = { "n", "v" }, desc = "インクリメント" },
      { "<C-x>", "<Plug>(dial-decrement)", mode = { "n", "v" }, desc = "デクリメント" },
    },
    config = function()
      local config = require("dial.config")
      local augend = require("dial.augend")

      config.augends:register_group({
        default = {
          augend.integer.alias.decimal, -- 自然数
          augend.integer.alias.decimal_int, -- 負の数も含んだ数値
          augend.integer.alias.hex, -- 16進数
          augend.integer.alias.octal, -- 8進数
          augend.integer.alias.binary, -- 2進数
          augend.constant.alias.bool, -- true/false
          augend.constant.new({
            elements = { "True", "False" },
            preserve_case = true,
          }), -- True/False
          augend.date.alias["%Y/%m/%d"],
          augend.date.alias["%Y-%m-%d"],
          augend.date.alias["%H:%M:%S"],
          augend.constant.alias.ja_weekday_full, -- 月曜日, 火曜日, ...
          augend.constant.alias.alpha, -- 小文字アルファベット
          augend.constant.alias.Alpha, -- 大文字アルファベット
          augend.semver.alias.semver, -- セマンティックバージョンナンバー
        },
      })
    end,
  },
  { "nvim-lua/plenary.nvim", lazy = true },
}
