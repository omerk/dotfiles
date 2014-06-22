set -o vi

export PATH=$HOME/bin:$HOME/.local/bin:/sbin:/usr/sbin:$PATH

export TERM=xterm-256color
export GREP_OPTIONS='--color=auto'

if [ $(id -u) -eq 0 ]; then
	UIDENT="#"
else
	UIDENT="$"
fi

export PROMPT_COMMAND='PS1="[\u@\h \w]`
if [[ \$? = "0" ]];
then echo "\\[\\033[0;32m\\]";
else echo "\\[\\033[0;31m\\]";
fi` $UIDENT\[\e[m\] "'
export PS1

alias gitdf='git diff --color'
alias gitst='git status'
alias gitlg="git log --graph --pretty=format:'%C(bold yellow)%h%Creset \
	-%C(bold red)%d%Creset %s %C(bold green)(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias sl='dmesg | egrep --color "ttyUSB|ttyACM|ttyAMA"'
alias sr='resize && reset'

alias ls='ls --color'
alias ll='ls -alh'

alias webs='python -m SimpleHTTPServer'

alias please=sudo

# powerline prompt
#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#	source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

export GOROOT=$HOME/pkg/go
export PATH=$PATH:$GOROOT/bin

