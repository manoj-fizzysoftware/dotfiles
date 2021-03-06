# OS X specific settings

export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export GIT_EDITOR='subl --wait --new-window'
export EDITOR='subl --wait'
export GEM_OPEN_EDITOR='subl'
export LESSEDIT='mate -l %lm %f'

# Use OS X version of SSH with agent forwarding
alias ssh='/usr/bin/ssh -A'
alias scp='/usr/bin/scp'
alias sftp='/usr/bin/sftp'
alias vim='mvim -v'

alias g='hub'
alias git='hub'

alias ls='ls -ahGl'

fpath=(~/.dotfiles/zsh/osx/functions $fpath)
autoload -U ~/.dotfiles/zsh/osx/functions/*(:t)

fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -U /usr/local/share/zsh/site-functions/*(:t)


localhost() {
  sudo dscl localhost -create /Local/Default/Hosts/$1 IPAddress 127.0.0.1
  echo "Added $1 at address 127.0.0.1"
}

case $OSTYPE in
  darwin10*)
		export ARCHFLAGS="-arch x86_64"
  ;;;
esac

ulimit -n 4096