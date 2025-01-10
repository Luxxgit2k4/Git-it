backup() {
  declare -A kumar=(
  ["/etc/"]="gitconfig"
    ["$HOME/"]=".gitconfig"
    ["$(pwd)/.git/"]="config"
    ["$(pwd)/.git/config"]=".worktree"
  )
  echo "Searching for existing config files..."
    for i in "${!kumar[@]}"; do
   alpha="${kumar[$i]}"

   gitconfig=$(find "$i" -maxdepth 1 -name "$alpha")
  if [ -f "$gitconfig" ]; then
    echo "Found "$alpha" config file at "$i" "
  else
    echo "config file not found"
  fi

done
    loading=( '|' '/' '-' '\')
    load() {
while [ 1 ]
do
  for j in "${loading[@]}"
  do
   echo -ne "\r$i"
   sleep 0.2
  done
done
}


}
backup
