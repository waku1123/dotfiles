-- スクロールを滑らかにするプラグイン
return {
  "karb94/neoscroll.nvim",
  event = { "BufReadPre" },
  config = function()
    require("neoscroll").setup({
      mappings = { -- Keys to be mapped to their corresponding default scrolling animation
        "<C-u>", -- 上にスクロール
        "<C-d>", -- 下にスクロール
        "<C-b>", -- ページ単位で上にスクロール
        "<C-f>", -- ページ単位で下にスクロール
        "<C-y>", -- 少し上にスクロール
        "<C-e>", -- 少し下にスクロール
        "zt", -- カーソル位置が画面の一番上になるようにスクロール
        "zz", -- カーソル位置が画面の中央になるようにスクロール
        "zb", -- カーソル位置が画面の一番下になるようにスクロール
      },
      hide_cursor = true, -- Hide cursor while scrolling
      stop_eof = true, -- Stop at <EOF> when scrolling downwards
      respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
      cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
      duration_multiplier = 1.0, -- Global duration multiplier
      easing = "circular", -- Default easing function. linear | quadratic | cubic | quartic | quintic | circular | sine
      pre_hook = nil, -- Function to run before the scrolling animation starts
      post_hook = nil, -- Function to run after the scrolling animation ends
      performance_mode = false, -- Disable "Performance Mode" on all buffers.
      ignored_events = { -- Events ignored while scrolling
        "WinScrolled",
        "CursorMoved",
      },
    })
  end,
}
