# Add java to paths.
if [ -d "/opt/java/jkd1.8.0_65" ]; then
  export JAVA_HOME=/opt/java/jdk1.8.0_65/
  export JRE_HOME=/opt/java/jdk1.8.0._65/jre
  export PATH=$PATH:/opt/java/jdk1.8.0_65/bin:/opt/java/jdk1.8.0_65/jre/bin
fi

# Change default editor.
export EDITOR=vim

# Add local scripts folder to paths.
if [ -d "$HOME/.scripts/" ]; then
  export PATH=$PATH:$HOME/.scripts/
fi

# Source RVM for ruby management and add to PATH for scripting.
if [ -d "$HOME/.rmv/" ]; then
  source "$HOME/.rvm/scripts/rvm"
  export PATH="$PATH:$HOME/.rvm/bin"
fi

# Load default ranger config.
export RANGER_LOAD_DEFAULT_RC=FALSE

# Use source-highlight to highlight with less.
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# Silence bell sound.
set bell-style none

# Add bash alias file if it exists.
if [ -f "$HOME/.bash_aliases" ]; then
	source "$HOME/.bash_aliases"
fi

# Add custom bash config file if it exists.
if [ -f "$HOME/.bash_config" ]; then
	source "$HOME/.bash_config"
fi

# Format ls outpus colors if ls_colors file exists.
if [ -f "$HOME/.ls_colors" ]; then
	source "$HOME/.ls_colors"
fi

# pew virtualenv wrapper for python
export WORKON_HOME=$HOME/.venv
export PROJECT_HOME=$HOME/Documents/code/python
#source /usr/local/bin/virtualenvwrapper.sh
# Display the virtual environment name in the terminal prompt.
#source $(pew shell_config)
