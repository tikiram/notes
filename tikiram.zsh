
# opens the github repo
function github() {
  origin=$(git remote show origin | grep Fetch)
  origin=${origin/.git}
  origin=${origin#*:*:}
  github_repo="https://github.com/$origin"
  open $github_repo
}

function f() {
  swift format ./Sources -p -r -i
}