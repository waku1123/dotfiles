-- yazi (file explorer) plugin
if not vim.g.vscode then
  return {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { "folke/snacks.nvim", lazy = true },
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<C-t><C-t>", mode = { "n", "v" }, "<cmd>Yazi<cr>",
        desc = "現在のファイルをyaziで開く",
      },
    },
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      open_multiple_tabs = false,
      highlight_groups = {
        hovered_buffer = nil,
        hovered_buffer_in_same_directory = nil,
      },
      floating_window_scaling_factor = 0.9,
      yazi_floating_window_winblend = 0,
      log_level = vim.log.levels.OFF,
      keymaps = {
        open_file_in_vertical_split = "<C-v>",
        open_file_in_horizontal_split = "<C-x>",
      },
      yazi_floating_window_border = "double",
      clipboard_register = "*",
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      -- vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
  }
else
  return {}
end
