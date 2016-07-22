# Some bash command aliases
# To check a command (e.g. ls) at terminal,
# type 'type ls' or alias ls'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#alias ls="ls --color=auto"
alias ls="ls -a --color"

# Android shortcut
alias android-studio="/opt/android/android-studio/bin/studio.sh"

# clear half of the terminal.
alias mid="tput cup $(stty size|awk '{print $1/2;}') 0 && tput ed"
