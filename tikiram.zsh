
# opens the github repo
function github() {
  origin=$(git remote show origin | grep Fetch)
  origin=${origin/.git}
  origin=${origin#*:*:}
  github_repo="https://github.com/$origin"
  open $github_repo
}


function repos() {

  local REPOS_DIR=~/Repositories

  for repo in "$REPOS_DIR"/*; do
      if [ -d "$repo/.git" ]; then
          cd "$repo"
          echo "Checking $repo..."
          
          # Verificar si hay commits no empujados
          if [[ $(git status --porcelain) ]]; then
              echo "  ⚠️ Cambios sin confirmar en $repo"
          fi

          if ! git diff --quiet @{u}..HEAD; then
              echo "  ⚠️ Commits locales no empujados en $repo"
          fi

          cd ..
      fi
  done

}

# function f() {
#   swift format ./Sources -p -r -i
# }