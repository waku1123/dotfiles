-- markdownをプレビューできるプラグイン
return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  -- markdownファイルを開いた時にロードする
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
}
