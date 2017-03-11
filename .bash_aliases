# Some bash command aliases
# To check a command (e.g. ls) at terminal,
# type 'type ls' or alias ls'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#alias ls="ls --color=auto"
alias ls="ls -a --color"
alias ll="ls -l"

# calendar
alias cal="ncal -3 --color=auto"

# i3 lock settings. use black color instead of default white.
alias i3lock='i3lock -c 000000'

# Nemo file browser. Don't open desktop view.
alias nemo='nemo --no-desktop'
# Also for nautilus file browser.
alias nautilus='nautilus --no-desktop'

# Android shortcut
#alias android-studio="/opt/android/android-studio/bin/studio.sh"

# Rsync shortcuts
alias rsync2server='rsync -avtu -e ssh /home/stcastle/Documents/ stcastle@recycle.cs.washington.edu:/homes/gws/stcastle/Documents/'   

alias rsync2local='rsync -avtu -e ssh stcastle@recycle.cs.washington.edu:/homes/gws/stcastle/Documents/ /home/stcastle/Documents/' 

alias rsyncboth='echo -e "\nrsync2server" && rsync2server && echo -e "\nrsync2local" && rsync2local'
