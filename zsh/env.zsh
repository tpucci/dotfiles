# Setting and editing of env variables.

# Vars
export EDITOR='nvim'
export SUDO_EDITOR='nvim'

# fnm
eval "`fnm env --multi --use-on-cd`"

export ANDROID_HOME=/Users/thomaspucci/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME

export BASE16_SHELL="$HOME/.config/base16-shell/" # Base 16
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

export LC_ALL=en_US.UTF-8 # Fastlane config
export LANG=en_US.UTF-8 # Fastlane config
export FASTLANE_HIDE_CHANGELOG=true # Fastlane config

# Path
export PATH=$PATH:/Users/thomaspucci/Library/Android/sdk/platform-tools # Android
export PATH=$PATH:/Users/thomaspucci/Library/Android/sdk/tools # Android
export PATH=$PATH:/Users/thomaspucci/Library/Flutter/bin # Flutter
export PATH="$PATH:$HOME/.rvm/bin" #RVM
export PATH="$PATH:$HOME/.ngrok/bin" # ngrok
export PATH="$PATH:$HOME/.dotfiles/bin/phabricator/arcanist/bin" # phabricator
export PATH="$PATH:$HOME/Library/terraform/bin" # terraform
export PATH="$PATH:$HOME/Library/Python/3.7/bin" # python

typeset -U PATH # Remove duplicates in $PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thomaspucci/Library/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/thomaspucci/Library/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thomaspucci/Library/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/thomaspucci/Library/google-cloud-sdk/completion.zsh.inc'; fi

