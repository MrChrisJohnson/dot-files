#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ez='vim ~/.zshrc'
alias ev='vim ~/.vimrc'
export PATH=~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin
alias tms='tmux new -s'
alias tma='tmux attach -d -t'
alias tml='tmux list-sessions'
alias sls='snakebite ls'
alias sdu='snakebite du -h'
alias smv='sudo -u spotify-discovery snakebite mv'
alias srm='sudo -u spotify-discovery snakebite rm -R'

# export PYTHONSTARTUP=$HOME/.pythonrc.py
# export PYTHONPATH=~/radio-index:~/rec-sys-batch:~/radio:~/luigi:~/rec-sys-online:~/spotify-common

# make SSH key forwarding work in screen and tmux
AGENT=/tmp/ssh-agent-screen-${USER}
test "${SSH_AUTH_SOCK}" && [[ "${SSH_AUTH_SOCK}" != "${AGENT}" ]] && ln -sf "${SSH_AUTH_SOCK}" "${AGENT}"
[ $TERM=='screen-bce' ] && export SSH_AUTH_SOCK="${AGENT}"
unset AGENT

unset TMOUT

# beeps are annoying
setopt NO_BEEP

#convenient editing of configs
alias ez='vim ~/.zshrc'
alias ev='vim ~/.vimrc'

#lock screen
alias lock='/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend'

#convenient ssh
alias lon6a1='ssh lon6-lambdaedgenode-a1.spotify.net -A'
alias lon6a2='ssh lon6-lambdaedgenode-a2.spotify.net -A'
alias lon6a3='ssh lon6-lambdaedgenode-a3.spotify.net -A'
alias pg='psql -U lambda_dashboards lambda_dashboards -h lon3-lambdadashboardsdb-a1.lon3.spotify.net'

#git stuff
alias testgit='ssh -T cjohnson@git.spotify.net'

# Skip forward/back a word with opt-arrow
bindkey '[C' forward-word
bindkey '[D' backward-word

# Delete word with opt-backspace/opt-delete
bindkey '[G' backward-kill-word
bindkey '[H' kill-word
