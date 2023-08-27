![version_badge](https://img.shields.io/badge/version-1.0.0-brightgreen)
![github_issues](https://img.shields.io/github/issues/sugawarayss/dotfiles)
![github_stars](https://img.shields.io/github/stars/sugawarayss/dotfiles?style=social)

# waku112358's dotfiles
My dotfiles for MacOSX.

![prompt.png](images/prompt.png)

![nvim.png](images/nvim.png)

## Quick Start

- run `make <target keyword>`
    - details see [Makefile](./Makefile)

## Contents
- [zsh](https://zsh.sourceforge.io/Doc/Release/zsh_toc.html) - resource files for zsh
- [Homebrew](https://brew.sh/index_ja) - my Brewfile
- [Git](https://git-scm.com/) - git global configuration files
- [Tig](https://github.com/jonas/tig) - keybinds configuration/a
- [Starship](https://starship.rs/ja-jp/) - my prompt configuration
- [NeoVim](https://neovim.io/doc/user/index.html) - my neovim configuration and plugins
- [Helix](https://helix-editor.com/) - my helix configuration
- [ideavim](https://pleiades.io/help/idea/using-product-as-the-vim-editor.html) - Jetbrains IDE vim plugin keybind configuration
- [Warp.app](https://www.warp.dev/) - terminal app made by rust


### Neovim Plugins

| Plugin Name                                                                                           | Description                                                    |
| ----------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [stevearc/aerial.nvim](https://github.com/stevearc/aerial.nvim)                                       | バッファのアウトラインを表示する                               |
| [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)                                           | ダッシュボードのカスタマイズ                                   |
| [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                                 | バッファをGUIエディタのようにタブ表示                          |
| [tyru/capture.vim](https://github.com/tyru/capture.vim)                                               | バッファ領域にコマンドの出力結果を表示する                     |
| [catppuccin/nvim](https://github.com/catppuccin/nvim)                                                 | カラーテーマ                                                   |
| [sudormrfbin/cheatsheet.nvim](https://github.com/sudormrfbin/cheatsheet.nvim)                         | チートシートをpopupで表示する                                  |
| [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)                                           | バッファ内補完                                                 |
| [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)                                       | Language Serverを使用した補完                                  |
| [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)                                               | ファイルパス補完                                               |
| [Decodetalkers/csv-tools.lua](https://github.com/Decodetalkers/csv-tools.lua)                         | CSVファイルのハイライト                                        |
| [Shougo/ddc.vim](https://github.com/Shougo/ddc.vim)                                                   | 自動保管エンジン                                               |
| [vim-denops/denops.vim](https://github.com/vim-denops/denops.vim)                                     | Neovimでdenoを利用できるようにする                             |
| [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim)                                               | インクリメント機能を拡張                                       |
| [lambdalisue/fern-git-status.vim](https://github.com/lambdalisue/fern-git-status.vim)                 | ファイラーにGitステータスを表示                                |
| [yuki-yano/fern-preview.vim](https://github.com/yuki-yano/fern-preview.vim)                           | ファイラーのツリーでプレビューを表示                           |
| [lambdalisue/fern-renderer-nerdfont.vim](https://github.com/lambdalisue/fern-renderer-nerdfont.vim)   | ファイラーでNerd系フォントを使用                               |
| [lambdalisue/fern.vim](https://github.com/lambdalisue/fern.vim)                                       | ファイラー                                                     |
| [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)                                             | LSPの進捗情報をバッファの右下に表示                            |
| [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim)                                         | git wrapper for Neovim                                         |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                                 | バッファのガターにGit情報を表示                                |
| [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)                                               | カーソルジャンプを拡張                                         |
| [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)         | display indentation guides                                     |
| [lambdalisue/kensaku.vim](https://github.com/lambdalisue/kensaku.vim)                                 | インクリメンタルサーチで日本語をローマ字で検索                 |
| [lambdalisue/kensaku-search.vim](https://github.com/lambdalisue/kensaku-search.vim/tree/main)         | /コマンドで日本語を検索できる                                  |
| [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)                               | show function signature                                        |
| [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)                                       | diaplay pictograms to completion list                          |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                             | enhance status line of Neovim                                  |
| [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)                       | markdown preview                                               |
| [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)             | bridge mason.nvim with neovim lspconfig                        |
| [jay-babu/mason-null-ls.nvim](https://github.com/jay-babu/mason-null-ls.nvim)                         | bridge mason.nvim with null-ls                                 |
| [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)                                 | manage language server                                         |
| [lambdalisue/nerdfont.vim](https://github.com/lambdalisue/nerdfont.vim)                               | for use NerdFont                                               |
| [folke/noice.nvim](https://github.com/folke/noice.nvim)                                               | UI(cmdline, notify, message) extension                         |
| [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)                 | use Neovim as a language server to inject LSP diagnostics      |
| [myusuf3/numbers.vim](https://github.com/myusuf3/numbers.vim)                                         | ノーマルモード時にline numberを相対数で表示                    |
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)                                     | auto close parentheses                                         |
| [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                               | Completion Engine                                              |
| [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)                         | カラーコードを色付けして表示                                   |
| [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)                                     | デバッグ実行                                                   |
| [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python)                       | pythonデバッグ                                                 |
| [rcarriga/nvim-dap-ui"](https://github.com/rcarriga/nvim-dap-ui)                                      | デバッグ用UIを提供                                             |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                                     | configs for Neovim LSP client                                  |
| [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)                                   | enhanced surround selections                                   |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                 | syntax highlight                                               |
| [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)                                     | 折り畳み                                                       |
| [kyazdani42/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)                        | display icons at telescope fuzzy finder result                 |
| [rgroli/other.nvim](https://github.com/rgroli/other.nvim)                                             | jump to code,test code inter file                              |
| [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)                                   | plugin/package management plugin for NeoVim                    |
| [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)                           | view treesitter infomation directly in Neovim                  |
| [mechatroner/rainbow_csv](https://github.com/mechatroner/rainbow_csv)                                 | CSVを色付け                                                    |
| [sunjon/Shade.nvim](https://github.com/sunjon/Shade.nvim)                                             | dims inactive windows                                          |
| [vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)                                             | inline IME for japanese                                        |
| [lpoto/telescope-docker.nvim](https://github.com/lpoto/telescope-docker.nvim)                         | control docker commands at telescope popup                     |
| [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | vim.ui.selectをTelescopeに置き換える                           |
| [tom-anders/telescope-vim-bookmarks.nvim](https://github.com/tom-anders/telescope-vim-bookmarks.nvim) | bookmark list in telescope                                     |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                     | fuzzy finder                                                   |
| [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)                               | auto highlight TODO comment                                    |
| [alinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)                                 | terminal in floating window                                    |
| [tom-anders/telescope-vim-bookmarks.nvim](https://github.com/tom-anders/telescope-vim-bookmarks.nvim) | ブックマークをTelescopeで検索                                  |
| [tpope/vim-commentary](https://github.com/tpope/vim-commentary)                                       | comment out                                                    |
| [itchyny/vim-gitbranch](https://github.com/itchyny/vim-gitbranch)                                     | display git branch name to status bar of Neovim                |
| [andymass/vim-matchup](https://github.com/andymass/vim-matchup)                                       | jump to match keywords                                         |
| [kana/vim-smartword](https://github.com/kana/vim-smartword)                                           | w/bモーションでの移動をスマートにする                          |
| [voldikss/vim-translator](https://github.com/voldikss/vim-translator)                                 | translate ja - en                                              |
| [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip)                                             | LSP's snippet                                                  |
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim)                                       | キーバインドにヒントを表示                                     |
| [simeji/winresizer](https://github.com/simeji/winresizer)                                             | 分割したwindowサイズを調整できるようにする                     |
