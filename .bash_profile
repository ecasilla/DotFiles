[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -d "$HOME/Library/Python/2.7/bin" ]; then
    PATH="$HOME/Library/Python/2.7/bin:$PATH"
fi

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
# You can use whatever you want as an alias, like for Mondays:
alias FUCK='fuck'

. ~/.nvm/nvm.sh
alias fuck='$(thefuck $(fc -ln -1))'
alias ls='ls -p'
alias ll='ls -la'
alias c='clear'
alias v='vim'
alias x="exit"
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
mcd () { mkdir -p "$1" && cd "$1"; }

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias edit=’subl’
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

alias dl='docker ps -l -q'
alias drm='docker rm $(docker ps -a -q)'
alias dockerimages='docker images -viz'

#git alias
alias  g='git'
alias  gp='git push  '
alias  gam='git commit -am'
alias  grm='git rm'
alias  gmv='git mv'
alias  grr='git reset --hard HEAD'
alias  goop="git commit --amend -C HEAD -n"
alias  ga='git add'
alias  gd='git diff | subl'
alias  gp='git push'
alias  gl='git log --name-status'
alias  gs='git s'
alias  gf='git fetch -p'
alias  gm='git commit -m'
alias  gb='git branch'
alias  gc='git checkout'
alias  gff="git fetch -p && git rebase origin/\$(git_prompt_info)"
alias  git='hub'

export HISTCONTROL=erasedups  # No duplicates
export HISTSIZE=10000        # Bigger history
shopt -s histappend # Append to ~/.bash_history
alias h='history | grep' # Easy history grep

export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export GOPATH=$HOME/development/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export bamboo_DOCKER_USERNAME="ernie.casilla"
export bamboo_DOCKER_EMAIL="ernie.casilla@juntacorp.com"

export DOCKER_HOST="tcp://192.168.59.103:2376"
export DOCKER_CERT_PATH="/Users/erniecasilla/.boot2docker/certs/boot2docker-vm"
export DOCKER_TLS_VERIFY=1

export bamboo_buildNumber=""
export bamboo_planRepository_branch="develop"






























export bamboo_DOCKER_PASSWORD="naked123"


