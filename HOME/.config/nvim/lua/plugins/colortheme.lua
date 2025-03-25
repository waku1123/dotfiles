-- カラーテーマ
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = function()
    require("tokyonight").setup({
      -- storm|night|day|moon
      style = "moon",
      light_style = "day",
      -- disable setting the background color
      transparent = true,
      -- Configure the colors used when opening a `:terminal` in Neovim
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "transparent", -- dark|transparent|normal
        floats = "dark", -- dark|light|normal
      },
      -- dim inactive windows
      dim_inactive = false,
      -- section headers in the lualine theme will be bold
      lualine_bold = false,
      -- on_colors = function(colors) end,
      -- on_highlights = function(highlights, colors) end,
      cache = true,
    })
    vim.cmd.colorscheme("tokyonight-moon")
  end,
}

