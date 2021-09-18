GPG_TTY=$(tty)

ZSH_THEME="ys"

DISABLE_UPDATE_PROMPT="true"

plugins=(git)

export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin:$PATH

export ZSH="/home/$USER/.oh-my-zsh"

export LANG=en_US.UTF-8

export GPG_TTY

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='subl'
fi

alias c='clear'
alias ..='cd ..'
alias ...='cd ../../'
alias dmon='sudo docker run --rm -ti --name=ctop --volume /var/run/docker.sock:/var/run/docker.sock:ro quay.io/vektorlab/ctop:latest'
alias venv='source $HOME/venv/bin/activate'
alias snow='python3 $HOME/script/snowjob.py'
alias dl='youtube-dl'
