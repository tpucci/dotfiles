# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh_plugins.sh # Load zsh plugins

source ~/.dotfiles/zsh/plugins/gh.zsh
source ~/.dotfiles/zsh/env.zsh

source ~/.dotfiles/zsh/options.zsh
source ~/.dotfiles/zsh/functions/functions.zsh
source ~/.dotfiles/zsh/functions/fzf-functions.zsh
source ~/.dotfiles/zsh/functions/git-functions.zsh
source ~/.dotfiles/zsh/functions/fzf-docker-kubetcl.zsh
source ~/.dotfiles/zsh/functions/fzf-arc-functions.zsh
source ~/.dotfiles/zsh/alias.zsh
source ~/.dotfiles/zsh/private.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fix asdf loading on non interactive terminals
# See https://github.com/expo/expo/issues/17853#issuecomment-1426960576
eval "$(/opt/homebrew/bin/brew shellenv)"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/thomaspucci/.dart-cli-completion/zsh-config.zsh ]] && . /Users/thomaspucci/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
