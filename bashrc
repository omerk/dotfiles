export TERM=xterm-256color
export PATH=$HOME/bin:$HOME/.local/bin:/sbin:$PATH

# aliases
alias gitdf='git diff --color'
alias gitst='git status'
alias gitlg='git log --pretty=short'

alias sl='dmesg | egrep --color "ttyUSB|ttyACM|ttyAMA"'
alias sr='resize && reset'

alias ls='ls --color'

alias please=sudo

# powerline prompt
#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#	source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

