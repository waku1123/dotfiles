if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  alias phis='peco-select-history'
  alias pcdr='peco-cdr'
fi

alias vim="nvim"

# brew実行時のみ、pyenvがPATHに含まれないようにする。（configファイルが複数あると怒られることを回避）
alias brew="PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"

# homebrewで入れたctagsを使うためのalias
alias ctags="$(brew --prefix)/bin/ctags"
# brew listから選択してuninstall

# catをbatで上書き
if type "bat" > /dev/null 2>&1; then
  alias oldcat="/bin/cat"
  alias cat="bat"
  alias catl='(){bat $1 -l $(bat -L | gum filter | cut -d ":" -f 1)}'
fi

# lsをexaで上書き
if type "exa" > /dev/null 2>&1; then
  alias oldls="/bin/ls"
  alias ls='exa -@ --git'
  alias la='exa --long --all --header --created --modified --bytes --icons --git --time-style=long-iso --group-directories-first'
  alias ll='exa --long --header --created --modified --bytes --icons --git --time-style=long-iso --group-directories-first'
  alias lla="exa --long --all --header --created --modified --bytes --icons --git --time-style=long-iso --group-directories-first"
  alias lt="exa -T --icons"
  alias ld="exa --long --only-dirs --header --created --modified --bytes --icons --git --time-style=long-iso --group-directories-first"
else
  alias ls="ls -Gh"
  alias la="ls -aGh"
  alias ll="ls -lGh"
  alias lla="ls -laGh"
fi

# psをprocsで上書き
if type "procs" > /dev/null 2>&1; then
  alias oldps="/bin/ps"
  alias ps="procs"
  alias pswatch='(){procs -W $1}'
fi

# findをfdで上書き
if type "fd" > /dev/null 2>&1; then
  alias oldfind="/usr/bin/find"
  alias find='fd'
  alias pcd='cd $(fd -t d | gum filter --prompt="cd to ... >")'
else
  alias pcd='cd $(find . --maxdepth 1 --type d | gum filter --prompt="cd to...>")'
fi

# sedをsdで上書き
if type "sd" > /dev/null 2>&1; then
  alias oldsed="/usr/bin/sed"
  alias sed="sd"
fi

# grepをrgで上書き
if type "rg" > /dev/null 2>&1; then
  alias oldgrep="/usr/bin/grep"
  alias grep="rg"
fi

# diffをcolordiffで上書き
if type "colordiff" > /dev/null 2>&1; then
  alias olddiff="/usr/bin/diff"
  alias diff='colordiff'
fi

# USBデバイスをlsするalias
alias lsusb="system_profiler SPUSBDataType"

# docker系のalias
# pecoを使って調べたdockerコンテナに入る
alias de='docker exec -it $(docker ps | gum filter --prompt="SELECT CONTAINER YOU WANT INTO >" | cut -d " " -f 1) /bin/bash'

# Git/Github系のalias
# ローカルにあるgitリポジトリを選択してpathに移動
alias repo='cd $(ghq list -p | gum filter --no-fuzzy --prompt="SELECT REPOSITORY >")'
# 選択したリモートリポジトリをGithubで開く
alias remote='$(hub browse $(ghq list | gum filter --no-fuzzy --value=$(basename $(pwd)) --prompt="SELECT REPOSITORY >"))'

# AWS CLI系のalias
alias profiles='aws configure list-profiles'
# aws cliでprofileを楽に指定する
alias -g lp='$(aws configure list-profiles | gum filter --prompt="AWS PROFILE >")'
alias tailcwlog='tail-cloudwatch-log'
alias scan='scan-dynamodb-table'
alias lss3='file-list-s3'
alias dls3="download-s3"

# gcloud系のalias
alias gcswpj="gx"

# adb系のalias
alias -g dv='$(adb devices | tail -n +2 | gum filter --prompt="SELECT SIRIAL NO >" | head -n 1 | sd "\s+\w+$" "")'
