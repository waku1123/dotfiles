return {
  -- markdownをプレビューできるプラグイン
  {
    "iamcco/markdown-preview.nvim",
    -- 遅延読み込みする
    lazy = true,
    -- markdownファイルを開いた時にロードする
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  -- markdownのSyntaxとキーマップを拡張するプラグイン
  {
    "ixru/nvim-markdown",
    ft = { "markdown"}
  },
  -- markdownレンダリング
  {
    "MeanderingProgrammer/markdown.nvim",
    lazy = true,
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "markdown" },
    build = ":RenderMarkdownToggle" ,
    config = function()
      require("render-markdown").setup({
        heading = {
          enabled = true,
          sign = true,
          icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
          signs = { '󰫎 ' },
          backgrounds = {
            'rendermarkdownh1bg',
            'rendermarkdownh2bg',
            'rendermarkdownh3bg',
            'rendermarkdownh4bg',
            'rendermarkdownh5bg',
            'rendermarkdownh6bg',
          },
          -- the 'level' is used to index into the array using a clamp
          -- highlight for the heading and sign icons
          foregrounds = {
              'rendermarkdownh1',
              'rendermarkdownh2',
              'rendermarkdownh3',
              'rendermarkdownh4',
              'rendermarkdownh5',
              'rendermarkdownh6',
          },
        },
        code = {
          enabled = true,
          sign = true,
          style = "full",
          left_pad = 0,
          border = "thick",
          above = '▄',
          below = '▀',
          highlight = 'rendermarkdowncode',
        },
        dash = {
          enabled = true,
          icon = '─',
          highlight = 'rendermarkdowndash',
        },
        bullet = {
          enabled = true,
          icons = { '●', '○', '◆', '◇' },
          highlight = 'rendermarkdownbullet',
        },
        checkbox = {
          enabled = true,
          unchecked = {
              icon = '󰄱 ',
              highlight = 'rendermarkdownunchecked',
          },
          checked = {
              icon = '󰱒 ',
              highlight = 'rendermarkdownchecked',
          },
          custom = {
              todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'rendermarkdowntodo' },
          },
        },
        quote = {
          enabled = true,
          icon = '▋',
          highlight = 'rendermarkdownquote',
        },
        pipe_table = {
          enabled = true,
          -- determines how the table as a whole is rendered:
          --  none: disables all rendering
          --  normal: applies the 'cell' style rendering to each row of the table
          --  full: normal + a top & bottom line that fill out the table when lengths match
          style = 'full',
          -- determines how individual cells of a table are rendered:
          --  overlay: writes completely over the table, removing conceal behavior and highlights
          --  raw: replaces only the '|' characters in each row, leaving the cells unmodified
          --  padded: raw + cells are padded with inline extmarks to make up for any concealed text
          cell = 'padded',
          border = {
              '┌', '┬', '┐',
              '├', '┼', '┤',
              '└', '┴', '┘',
              '│', '─',
          },
          head = 'rendermarkdowntablehead',
          row = 'rendermarkdowntablerow',
          filler = 'rendermarkdowntablefill',
        },
        callout = {
          note = { raw = '[!note]', rendered = '󰋽 note', highlight = 'rendermarkdowninfo' },
          tip = { raw = '[!tip]', rendered = '󰌶 tip', highlight = 'rendermarkdownsuccess' },
          important = { raw = '[!important]', rendered = '󰅾 important', highlight = 'rendermarkdownhint' },
          warning = { raw = '[!warning]', rendered = '󰀪 warning', highlight = 'rendermarkdownwarn' },
          caution = { raw = '[!caution]', rendered = '󰳦 caution', highlight = 'rendermarkdownerror' },
          -- obsidian: https://help.a.md/editing+and+formatting/callouts
          abstract = { raw = '[!abstract]', rendered = '󰨸 abstract', highlight = 'rendermarkdowninfo' },
          todo = { raw = '[!todo]', rendered = '󰗡 todo', highlight = 'rendermarkdowninfo' },
          success = { raw = '[!success]', rendered = '󰄬 success', highlight = 'rendermarkdownsuccess' },
          question = { raw = '[!question]', rendered = '󰘥 question', highlight = 'rendermarkdownwarn' },
          failure = { raw = '[!failure]', rendered = '󰅖 failure', highlight = 'rendermarkdownerror' },
          danger = { raw = '[!danger]', rendered = '󱐌 danger', highlight = 'rendermarkdownerror' },
          bug = { raw = '[!bug]', rendered = '󰨰 bug', highlight = 'rendermarkdownerror' },
          example = { raw = '[!example]', rendered = '󰉹 example', highlight = 'rendermarkdownhint' },
          quote = { raw = '[!quote]', rendered = '󱆨 quote', highlight = 'rendermarkdownquote' },
        },
        link = {
          enabled = true,
          -- inlined with 'image' elements
          image = '󰥶 ',
          -- inlined with 'inline_link' elements
          hyperlink = '󰌹 ',
          highlight = 'rendermarkdownlink',
        },
        sign = {
          enabled = true,
          -- more granular mechanism, disable signs within specific buftypes
          exclude = {
              buftypes = { 'nofile' },
          },
          highlight = 'rendermarkdownsign',
        },
      })
    end,
  }
}
