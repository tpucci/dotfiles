
# Open a PR on Github with GPR
gpr() {
  cd $(git rev-parse --show-toplevel)
  TITLE=${1}
  MESSAGE=$(echo $TITLE'\n' | cat - ./PULL_REQUEST_TEMPLATE.md)
  hub pull-request -m "${MESSAGE}" -b ${2:-"master"} --browse
}

# Cd to root dir of git project
gr() {
  cd $(git rev-parse --show-toplevel)
}

# Commit all in a Work in progress commit
wip() {
  gr
  git add .
  git ci ':construction: Work in progress'
}

# Unwip: Reset HEAD to previous commit
unwip() {
  git reset HEAD~1
}

# md <folder-name> - Create folder and cd to it
md(){
  mkdir "$1"
  cd "$1"
}

# gb <branch-name> - Create a new branch and check it out
gb(){
  git co -b $1
}
