export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

#removed git from the below plugins as it prevented my aliases from
#working as expected
plugins=(brew docker docker-compose golang npm tmux vi-mode)

#===EXPORTS===
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export EDITOR='vim'
export PATH=$PATH:/usr/local/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/scripts
export EVENT_NOKQUEUE=1 #Solves a tmux/OS 10 Sirra bug
export KEYTIMEOUT=1

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#===SOURCES===
source $ZSH/oh-my-zsh.sh

#FIXME: Don't assume file structure.
#Load single command for unzipping, untarring etc.
source ~/repos/dotfiles/zsh/extract.sh

#===ALIASES===

alias v=vim
alias top=htop

#Shell
alias cl="clear";
alias cls="clear";
alias claer="clear"
alias cler="clear"
alias clar="clear"
alias lear="clear"

#relocate
alias dot="cd ~/repos/dotfiles"
alias repos="cd ~/repos/"

#Git
alias g=git
alias gi=git
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add ."
alias gap="git add -p"
alias pull="git pull"
alias push="git push"
alias fetch="git fetch -p"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gwipe="git reset --hard;git clean -f"
#Yay Firefly!
alias gorram="git commit --amend --no-edit"
alias gorramit="git commit --amend --no-edit"
alias gorammit="git commit --amend --no-edit"
alias gorrammit="git commit --amend --no-edit"

#Snowplow
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias .......="cd ../../../../../../"
alias ........="cd ../../../../../../../"
alias .........="cd ../../../../../../../../"
alias ..........="cd ../../../../../../../../../"
alias ...........="cd ../../../../../../../../../../"
alias ............="cd ../../../../../../../../../../../"
alias .............="cd ../../../../../../../../../../../../"
alias ..............="cd ../../../../../../../../../../../../../"
alias ...............="cd ../../../../../../../../../../../../../../"
alias ................="cd ../../../../../../../../../../../../../../../"
#At this point you probably want 'cd /' anyway...

#Tmux
alias ta="tmux attach"

#Docker
alias dcd="docker-compose down"
alias dcu="docker-compose up"

#===Shell magic<3===
#Enable vim mode in terminal, and set the timeout to 0.1s
bindkey -v
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Tell me when I'm in normal mode in the shell
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

#Enable the above function on startup and when modes change
zle -N zle-line-init
zle -N zle-keymap-select
