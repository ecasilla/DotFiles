#! /usr/bin/env bash

# .bashrc
export EDITOR="vim"

set -o vi


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# GRC colorizes nifty unix tools all over the place
#if grc &>/dev/null
#then
  #source "$(brew --prefix)/etc/grc.bashrc"
#fi

# custom functions
if [ -f "/USER/${USER}/.bash/functions" ]; then
	. "/USER/${USER}/.bash/functions"
fi

# custom functions
if [ -f "/USER/${USER}/.bash/aliases" ]; then
	. "/USER/${USER}/.bash/aliases"
fi

# as last entry source the gitprompt script

export PATH=$PATH":/USER/${USER}/bin/"

export PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

cat ~/.prev_dir
cat /dev/null > ~/.prev_dir

ssh() {
  if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
    tmux rename-window "$(echo $* | cut -d . -f 1)"
    command ssh "$@"
    tmux set-window-option automatic-rename "on" 1>/dev/null
  else
    command ssh "$@"
  fi
}


export TERM=screen-256color

# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR=$HOME/".nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh
