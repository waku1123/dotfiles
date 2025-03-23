if not vim.g.vscode then
  return {
    --markdownのSyntaxとキーマップを拡張するプラグイン
    {
      "ixru/nvim-markdown",
      ft = { "markdown"}
    },
    -- markdownレンダリング
    {
      "OXY2DEV/markview.nvim",
      ft = { "markdown", "codecompanion" },
    },
    { "nvim-treesitter/nvim-treesitter", lazy = true },
    { "nvim-tree/nvim-web-devicons", lazy = true },
  }
else
  return {}
end
