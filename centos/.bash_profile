# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#export PS1="\[\e[0;33m\][\e[0;33m\]\u@\e[0;31m\]\h \[\e[0;34m\]\W\e[0;33m\]]$ \[\e[0m\]"
#export PS1='\033[33m[\u@\h \W]$ \033[0m'
export PS1="\[\e[0;33m\][\u@\h \W]# \[\e[0m\]"

# User specific environment and startup programs

LD_LIBRARY_PATH=$HOME/root_home/projects/dev_libs/ffmpeg/lib:$HOME/root_home/projects/dev_libs/ape/libs::$LD_LIBRARY_PATH
#choose gnu commands, gls ... first
PATH=$HOME/root_home/projects/dev_libs/ffmpeg/bin:$HOME/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

export LD_LIBRARY_PATH
export PATH
