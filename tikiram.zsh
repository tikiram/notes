
# opens the github repo
function github() {
  origin=$(git remote show origin | grep Fetch)
  origin=${origin/.git}
  origin=${origin#*:*:}
  github_repo="https://github.com/$origin"
  open $github_repo
}

function keys() {
  local private="$1-private.pem"
  local public="$1-public.pem"
  openssl ecparam -name prime256v1 -genkey -noout -out $private
  openssl ec -in $private -pubout -out $public
  echo $private
  echo $public
}

function scan() {
    tesseract $1.jpeg r/$1 -l spa pdf
}

function lines1() {
    # git ls-files | grep -v -E '.+[.]dict|.+[.]phones|.+[.]symbols|.+[.].vp' | xargs wc -l
    git ls-files | grep ".kt\|.swift" | xargs wc -l
}
function lines2() {
    git ls-files | grep -v -E '.+[.]dict|.+[.]phones|.+[.]symbols|.+[.].vp' | xargs cat | wc -l
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