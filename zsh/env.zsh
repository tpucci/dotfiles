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
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools" # Android
export PATH="$PATH:$HOME/Library/Android/sdk/tools" # Android
export PATH="$PATH:$HOME/Library/Flutter/bin" # Flutter
export PATH="$PATH:$HOME/.rvm/bin" #RVM
export PATH="$PATH:$HOME/.ngrok/bin" # ngrok
export PATH="$PATH:$HOME/.dotfiles/bin/phabricator/arcanist/bin" # phabricator
export PATH="$PATH:$HOME/Library/terraform/bin" # terraform
export PATH="$PATH:$HOME/Library/Python/3.7/bin" # python
export PATH="$PATH:$HOME/.jenv/bin" # jenv
export PATH="$PATH:$HOME/go/bin" # go
export PATH="$PATH:/Library/TeX/texbin" # LaTeX

# jenv
eval "$(jenv init -)"

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

typeset -U PATH # Remove duplicates in $PATH


# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/thomaspucci/Library/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thomaspucci/Library/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/thomaspucci/Library/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thomaspucci/Library/google-cloud-sdk/completion.zsh.inc'; fi

