# Setting and editing of env variables.

# Vars
export EDITOR='nvim'
export SUDO_EDITOR='nvim'

export ANDROID_HOME=/Users/thomaspucci/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK=/Users/thomaspucci/Library/Android/sdk/ndk/21.1.6352462

export BASE16_SHELL="$HOME/.config/base16-shell/" # Base 16
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

export LC_ALL=en_US.UTF-8 # Fastlane config
export LANG=en_US.UTF-8 # Fastlane config
export FASTLANE_HIDE_CHANGELOG=true # Fastlane config

# Path
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools" # Android
export PATH="$PATH:$HOME/Library/Android/sdk/tools" # Android
export PATH="$PATH:$HOME/Library/Flutter/bin" # Flutter
export PATH="$PATH:$HOME/.rvm/bin" #RVM
export PATH="$PATH:$HOME/.ngrok/bin" # ngrok
export PATH="$PATH:$HOME/.dotfiles/bin/phabricator/arcanist/bin" # phabricator
export PATH="$PATH:$HOME/Library/terraform/bin" # terraform
export PATH="$PATH:$HOME/go/bin" # go
export PATH="$PATH:/Library/TeX/texbin" # LaTeX
export PATH="$PATH:/Users/thomaspucci/.local/bin" # python local
export PATH="$PATH":"$HOME/.pub-cache/bin" # Dart pub global packages
export PATH="$PATH":"$HOME/google-cloud-sdk/bin" # gcloud
export PATH="$PATH:/opt/homebrew/bin" # Homebrew for Apple chips

# JAVA_HOME
. ~/.asdf/plugins/java/set-java-home.zsh
# FLUTTER
export FLUTTER_ROOT="$(asdf where flutter)"
export FLUTTER_HOME="$(asdf where flutter)"
# GOLANG
export ASDF_GOLANG_OVERWRITE_ARCH="amd64"
export ASDF_GOLANG_MOD_VERSION_ENABLED=true
. ~/.asdf/plugins/golang/set-env.zsh
# ZSH_CODEX
export ZSH_CODEX_PYTHON="$(asdf where python)/bin/python"
export ZSH_CODEX_PREEXECUTE_COMMENT="true"

typeset -U PATH # Remove duplicates in $PATH

## COMPLETIONS

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thomaspucci/Library/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thomaspucci/Library/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thomaspucci/Library/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thomaspucci/Library/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/usr/local/share/zsh/site-functions/_bun" ] && source "/usr/local/share/zsh/site-functions/_bun"

## Dart cli completions
if [ -f /Users/thomaspucci/.dart-cli-completion/zsh-config.zsh ]; then . '/Users/thomaspucci/.dart-cli-completion/zsh-config.zsh'; fi

