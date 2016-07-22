# Add java to paths.
export JAVA_HOME=/opt/java/jdk1.8.0_65/
export JRE_HOME=/opt/java/jdk1.8.0._65/jre
export PATH=$PATH:/opt/java/jdk1.8.0_65/bin:/opt/java/jdk1.8.0_65/jre/bin

# Source RVM for ruby management.
source "$HOME/.rvm/scripts/rvm"

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
