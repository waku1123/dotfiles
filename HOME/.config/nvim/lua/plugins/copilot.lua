-- Github copilot
-- return {
--   "github/copilot.vim",
--   -- 遅延読み込みする
--   lazy = true,
--   -- 新しいバッファの編集を開始する時にファイルを読み込む前にロードする
--   event = { "BufReadPre" },
-- }
return {}
-- return {
--   "zbirenbaum/copilot.lua",
--   event = { "InsertEnter" },
--   config = function()
--     require("copilot").setup({
--       panel = {
--         enabled = true,
--         auto_refresh = false,
--         keymap = {
--           jump_prev = "[[",
--           jump_next = "]]",
--           accept = "<CR>",
--           refresh = "gr",
--           open = "<M-CR>"
--         },
--         layout = {
--           position = "bottom", -- "bottom" | "top" | "left" | "right"
--           ratio = 0.4
--         },
--       },
--       suggestion = {
--         enabled = true,
--         auto_trigger = false,
--         hide_during_completion = true,
--         debounce = 75,
--         keymap = {
--           accept = "<M-l>",
--           accept_word = false,
--           accept_line = false,
--           next = "<M-]>",
--           prev = "<M-[>",
--           dismiss = "<C-l>"
--         },
--       },
--       filetypes = {
--         yaml = false,
--         markdown = false,
--         help = false,
--         gitcommit = true,
--         gitrebase = false,
--         hgcommit = false,
--         svn = false,
--         cvs = false,
--         ["."] = false,
--       },
--       copilot_node_command = 'node',
--       server_opts_overrides = {},
--     })
--   end,
-- }
