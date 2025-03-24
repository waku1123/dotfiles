if not vim.g.vscode then
  return {
    {
      "olimorris/codecompanion.nvim",
      keys = {
        { "<Leader>cf", "<cmd>CodeCompanion<CR>",            mode = {"n", "v"}, desc = "ユーザプロンプトを入力" },
        { "<Leader>ca", "<Cmd>CodeCompanionActions<CR>",     mode = {"n", "v"}, desc = "Copilot アクションリストを表示" },
        { "<Leader>cc", "<Cmd>CodeCompanionChat Toggle<CR>", mode = {"n", "v"}, desc = "Copilot Chat をトグル" },
      },
      config = function()
        require("codecompanion").setup({
          opts = {
            language = "Japanese",
            log_level = "DEBUG",
          },
          adapters = {
            copilot = function()
              return require("codecompanion.adapters").extend("copilot", {
                schema = {
                  model = {
                    default = "claude-3.7-sonnet",
                  },
                },
              })
            end
          },
          strategies = {
            chat = {
              adapter = "copilot",
              keymaps = {
                send = {
                  modes = { n = "<CR>", i = "<C-s>" },
                },
                close = {
                  modes = { n = "<C-c>", i = "<C-c>" },
                },
              },
            },
          },
          display = {
            chat = {
              show_header_separator = true,
            },
          }
        })
      end,
    },
    { "nvim-lua/plenary.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
  }
else
  return {}
end
