export TERM=xterm-256color
export PATH=$HOME/bin:$HOME/.local/bin::$PATH

# aliases
alias gitdf='git diff --color'
alias gitst='git status'
alias gitlg="git log --graph --pretty=format:'%C(bold yellow)%h%Creset -%C(bold red)%d%Creset %s %C(bold green)(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias sl='dmesg | egrep --color "ttyUSB|ttyACM|ttyAMA"'
alias sr='resize && reset'

alias please=sudo

# powerline prompt
#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#	source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

