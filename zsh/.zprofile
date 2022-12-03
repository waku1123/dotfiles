############
# 環境変数 #
############
export LANG=ja_JP.UTF-8
export KCODE=u           # KCODEにUTF-8を設定

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/bin"
# Apple Silicon用とIntel用homebrewにパスを通す
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# manコマンドでbatを使って色付けページャーにする
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#--------
# anyenv
#--------
# export PATH="$HOME/.anyenv/bin:$PATH"
# eval "$(anyenv init -)"

# pyenv
# export PYENV_ROOT="$HOME/.anyenv/envs/pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
## pyenv-virtualenvの設定
# eval "(pyenv virtualenv-init -)" > /dev/null

#--------
# goenv
#--------
# export GOENV_ROOT="$HOME/.anyenv/envs/goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
# export GOENV_DISABLE_GOPATH=1
# eval "$(goenv init -)"

#--------
# nodenv
#--------
# export PATH=$HOME/anyenv/envs/nodenv

#--------
# jenv
#--------
# export JENV_ROOT="$HOME/.anyenv/envs/jenv"
# if [ -d "${JENV_ROOT}" ]; then
#   export PATH="$JENV_ROOT/bin:$PATH"
#   eval "$(jenv init -)"
# fi

#--------
# rbenv
#--------
# export RBENV_ROOT="$HOME/.anyenv/envs/rbenv"
# export PATH="$RBENV_ROOT/bin:$PATH"
# eval "$(rbenv init -)"

#--------
# openjdk
#--------
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
#export JAVA_HOME=`/usr/libexec/java_home -v 15`

#---------
# poetry
#---------
export PATH="$HOME/.poetry/bin:$PATH"

#---------
# pipenv
#---------
# venvをプロジェクトディレクトリ内に作る
export PIPENV_VENV_IN_PROJECT=1

#---------
# amplify
#---------
export PATH="$HOME/.amplify/bin:$PATH"

#---------
# flutter
#---------
# githubからインストールした場合
#export FLATTER_PATH=$HOME/flutter/bin
#export PATH="$PATH:$FLATTER_PATH"

# fvm (flutter)
export PATH="$PATH:$HOME/fvm/default/bin"

#---------
# android sdk
#---------
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#---------
# Neovim
#---------
export XDG_CONFIG_HOME=~/.config

typeset -U path cdpath fpath manpath # パスの重複登録を避ける

# Added by Toolbox App
export PATH="$PATH:/Users/yss/Library/Application Support/JetBrains/Toolbox/scripts"