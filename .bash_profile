#[login-action]
echo "Hello!! [$(whoami)]"
date "+Login Time : %Y/%m/%d (%a) | %H:%M (%S)"

#[Shell_Config]
set -o noclobber
export TMUX_TMPDIR=/tmp

#[Sync_History]
function share_history {
            history -a
                history -c
                    history -r
            }
            PROMPT_COMMAND='share_history'
            shopt -u histappend
            
#[alias]
alias sr="source"
alias vg="vagrant"
function mkdircd() { \mkdir -p $@ && cd $_; }
alias mkdir="mkdircd"
eval `dircolors ~/.colorrc`
alias ls='ls -aF --color=auto'
alias ll="ls -laF --color=auto"
function cdls(){
         \cd "$@" && ls
        }
alias cd="cdls"
alias cv="cd /vagrant"
alias rm="rm -vri"
alias cp="cp -vrip"  
alias grep="grep -rE"

#[git alias]
alias cdvg="cd ~/Desktop/work/vagrant"
alias gcle="git config --local user.email"
alias gcln="git config --local user.name"
alias gr="git remote"
alias grao="git remote add origin"
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gcf="git config"
alias gco="git checkout"
alias gb="git branch"
alias gm="git merge"
alias gmo="git merge origin"
alias gp="git push"
alias gpo="git push origin"

#[envdev]
export HISTSIZE=10000
export HISTFILESIZE=10000
export EDITOR="vim"

