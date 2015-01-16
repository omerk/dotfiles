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
alias fuck='sudo $(history -p \!\!)' 

alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'

# powerline prompt
#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#	source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

function pdfsplit()
{
	if [ $# -eq 3 ]; then
		gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
			-dFirstPage=${2} \
			-dLastPage=${3} \
			-sOutputFile="${1%.pdf}_p${2}-p${3}.pdf" \
			"${1}"
	else
		echo "usage: pdfsplit <source-file> <first-page> <last-page>"
	fi
}

function pdfjoin()
{
	if [ $# -ge 3 ]; then
		gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -sOutputFile="${1}" "${2}" "${3}" \
			"${4}" "${5}" "${6}" "${7}" "${8}" "${9}" "${10}" "${11}" "${12}" "${13}"  
	else
		echo "usage: pdfjoin <merged-file> <first-pdf> <...> <last-pdf>"
	fi
}

export GOROOT=$HOME/pkg/go
export PATH=$PATH:$GOROOT/bin

export PATH="$PATH:$HOME/.rvm/bin"
