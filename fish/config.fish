set -gx fish_user_paths "/opt/homebrew/bin" $fish_user_paths


alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gfb="git fetch; git merge origin/head"
alias pp="pipenv shell"
alias gpr="pre-commit run --all-files"
alias pm="mypy ."
alias gcm="git commit -m"



source (brew --prefix asdf)/libexec/asdf.fish


set --universal add_newline_before false
