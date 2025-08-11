
############
# set PATH #
############
# Homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
# RUST
fish_add_path $HOME/.cargo/bin
# psql
fish_add_path /opt/homebrew/opt/libpq/bin
# mysql
fish_add_path /opt/homebrew/opt/mysql-client/bin


#########################
# ENVIRONMENT VARIABLES #
#########################
set -Ux LANG ja_JP.UTF-8
set -Ux KCODE u
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"
# XDG PATHs
set -q XDG_CONFIG_HOME || set -gx XDG_CONFIG_HOME $HOME/.config
set -q XDG_DATA_HOME || set -gx XDG_DATA_HOME $HOME/.local/share
set -q XDG_CACHE_HOME || set -gx XDG_CACHE_HOME $HOME/.cache
# fish CONFIG PATHs
set -g FISH_CONFIG_DIR $XDG_CONFIG_HOME/fish
set -g FISH_CONFIG $FISH_CONFIG_DIR/config.fish
set -g FISH_CACHE_DIR $XDG_CACHE_HOME/fish

# fish CONFIG
# NERD FONT を使用可能にする
set -gx theme_nerd_fonts yes
# vi モードのインジケータを常に表示する
set -gx theme_display_vi yes
# ユーザ名とホスト名を常に表示する
set -gx theme_display_user yes
set -gx theme_display_hostname yes
# 日付の表示書式を変更する
set -gx theme_date_format "+[%Y/%m/%d %H:%M:%S]"
# プロンプトから入力欄の前に改行をする
set -gx theme_newline_cursor yes

# 改行後入力欄の前に表示する文字を設定する
function fish_mode_prompt
  switch $fish_bind_mode
    case default
      # Normal Mode(緑)
      set -gx theme_newline_prompt "\e[92m󰫻\e[m "
    case insert
      # Insert Mode(シアン)
      set -gx theme_newline_prompt "\e[96m󰫶\e[m "
    case visual
      # Visual Mode(オレンジ)
      set -gx theme_newline_prompt "\e[38;5;208m󰬃\e[m "
    case replace_one
      # Replace One Mode(黄) - r key (一文字だけ置換)
      set -gx theme_newline_prompt "\e[38;5;205m󰫿󰫼\e[m "
    case replace
      # Replace Mode(黄) - R key(ESCで抜けるまで置換)
      set -gx theme_newline_prompt "\e[91m󰫿\e[m "
  end
  commandline -f repaint
  echo ""
end

# neovim
set -gx EDITOR nvim

# android sdk
# set -Ux ANDROID_HOME $HOME/Library/Android/sdk
# set PATH $ANDROID_HOME/tools $PATH
# fish_add_path $ANDROID_HOME/tools
# set PATH $ANDROID_HOME/platform-tools $PATH
# fish_add_path $ANDROID_HOME/platform-tools


# setup mise
/opt/homebrew/bin/mise activate fish | source

#########
# alias #
#########
abbr -a paths "echo \$PATH | tr ' ' '\n'"
# sc で ~/.config/fish/config.fish を再読み込み
abbr -a sc source ~/.config/fish/config.fish
# c で clear -> ls -l
abbr -a c 'clear && ll'
# pbc で pbcopy
abbr -a pbc pbcopy
# vim で nvim
abbr -a vim nvim

if type "bat" > /dev/null 2>&1;
  abbr -a oldcat /bin/cat
  abbr -a cat bat
end

if type "procs" > /dev/null 2>&1;
  abbr -a oldps /bin/ps
  abbr -a ps procs
end

if type "lsd" > /dev/null 2>&1;
  abbr -a oldls /bin/ls
  alias ls='lsd --git'
  alias la='lsd --all --header --size bytes --git --group-directories-first'
  alias ll="lsd --long --header --size bytes --git --group-directories-first --date '+%Y-%m-%dT%H:%M:%S'"
  alias lla="lsd --long --all --header --size bytes --git --group-directories-first --date '+%Y-%m-%dT%H:%M:%S'"
  alias lt="lsd --tree"
  alias ld="lsd --directory-only --tree --icon never"
else
  abbr -a ls ls -Gh
  abbr -a la ls -aGh
  abbr -a ll ls -lGh
  abbr -a lla ls -laGh
  abbr -a lt tree
  abbr -a ld tree -d
end

# if type "fd" > /dev/null 2>&1;
#   alias oldfind="/usr/bin/find"
#   alias find='fd'
# end

# sedをsdで上書き
# if type "sd" > /dev/null 2>&1;
#   alias oldsed="/usr/bin/sed"
#   alias sed="sd"
# end

# grepをrgで上書き
# if type "rg" > /dev/null 2>&1;
#   alias oldgrep="/usr/bin/grep"
#   alias grep="rg"
# end

# diffをcolordiffで上書き
if type "colordiff" > /dev/null 2>&1;
  abbr -a olddiff /usr/bin/diff
  abbr -a diff colordiff
end

if type "ghq" > /dev/null 2>&1;
  # ローカルにあるgitリポジトリを選択してpathに移動
  function repo
    set -l selected_repo (ghq list -p | peco --prompt="SELECT REPOSITORY >")
    if test -n "$selected_repo"
        cd $selected_repo
    end
  end

end

if type "hub" > /dev/null 2>&1;
  # 選択したリモートリポジトリをGithubで開く
  function remote
    set -l current_dir (basename (pwd))
    set -l repo (ghq list | peco --query=$current_dir --prompt="SELECT REPOSITORY >")
    if test -n "$repo"
        hub browse $repo
    end
  end
end

# if type "git" > /dev/null 2>&1;
# end

#################
# KeyBindings   #
#################
function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert

    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert

    # Normal Mode で <S-y> で クリップボードにコピー
    bind Y fish_clipboard_copy
    bind p fish_clipboard_paste
    # コマンド履歴を見る
    bind \cr peco_select_history
    # プロセスをキルする(要ps/procs対応)
    bind \cx\ck peco_kill

    # fzf
    bind \cx\cf '__fzf_find_file' # (要sd/sed対応)
    bind \ctr '__fzf_reverse_isearch'
    bind \ed '__fzf_cd' # (要sd/sed 対応)
end

# aws cli の補完
complete -c aws -f -a '(
  begin
    set -lx COMP_SHELL fish
    set -lx COMP_LINE (commandline)
    aws_completer
  end
)'

###################
# function の定義 #
###################
function notify
  echo "コマンド実行が完了しました" | say -v Ava
end

#################
# Plugin の設定 #
#################
# yuys13/fish-autols
set -U autols_cmd ll
# fzf
set -U FZF_LEGACY_KEYBINDINGS 0

if status is-interactive
    # Commands to run in interactive sessions can go here
end
