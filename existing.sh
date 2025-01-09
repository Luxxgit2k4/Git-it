backup() {
  gitconfig=$(find "$1" -maxdepth 1 -name "$2")
  if [ -f "$gitconfig" ]; then
    echo "The file exists !!"
  else
    echo "Git config does not exist"
  fi
}
backup "/etc" "gitconfig"
backup "$HOME" ".gitconfig"
backup "$(pwd)/.git/" "config"
backup "$(pwd)/.git/worktrees" "config"
