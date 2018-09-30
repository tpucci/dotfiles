
# Open a PR on Github with GPR
gpr() {
  TITLE=${1}
  MESSAGE=$(echo $TITLE'\n' | cat - ./PULL_REQUEST_TEMPLATE.md)
  hub pull-request -m "${MESSAGE}" -b ${2} --browse
}
