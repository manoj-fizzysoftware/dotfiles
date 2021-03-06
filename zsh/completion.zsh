autoload -U compinit
compinit


if [[ -f $HOME/.ssh/known_hosts ]]; then
  # Parses the ssh known_hosts file for previously visited hosts, then offers
  # them for completions in ssh, scp and sftp commands.

  local knownhosts
  knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} ) 
  zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts
fi