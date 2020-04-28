# Arc diff a single commit
arcd() {
  git log --color=always --format='%C(auto)%h%d %s %C(black)%C(bold)%cr' | fzf -m --ansi | grep -Eo '[a-f0-9]+' | head -1 | awk "{print $1}" | xargs arc diff
}
