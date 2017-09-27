# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#export PS1="\[\e[0;33m\][\e[0;33m\]\u@\e[0;31m\]\h \[\e[0;34m\]\W\e[0;33m\]]$ \[\e[0m\]"
export PS1="\[\e[0;33m\][\u@\h \W]$ \[\e[0m\]"

###############################################################
# Terminal colours (after installing GNU coreutils)
#NM="[\033[0;38m]" #means no background and white lines
#HI="[\033[0;37m]" #change this for letter colors
#HII="[\033[0;31m]" #change this for letter colors
#SI="[\033[0;33m]" #this is for the current directory
#IN="[\033[0m]"
#export PS1="$NM[$HI\u@$HII\h $SI\W$NM] $IN"
###############################################################

# User specific environment and startup programs
#PATH=$PATH:$HOME/bin

#choose gnu commands, gls ... first
PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/findutils/libexec/gnubin:$HOME/bin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
################################################
# Library path
#   For each library that a program uses, the dynamic linker looks for it in each directory
#   in DYLD_LIBRARY_PATH in turn. If it still can't find the library, it then searches
#   DYLD_FALLBACK_FRAMEWORK_PATH and DYLD_FALLBACK_LIBRARY_PATH in turn.
################################################
DYLD_LIBRARY_PATH=$HOME/projects/dev_libs/ffmpeg/lib:$HOME/projects/dev_libs/ape/libs:$DYLD_LIBRARY_PATH
export PATH
export MANPATH
export DYLD_LIBRARY_PATH

# ls-colors setting up
#export LS_OPTIONS='--color=auto' # 如果没有指定，则自动选择颜色
#export CLICOLOR=1 
##########################################################################
# LSCOLORS中一共11组颜色设置，按照先后顺序，分别对以下的文件类型进行设置： 
#	directory 
#	symbolic link 
#	socket 
#	pipe 
#	executable 
#	block special 
#	character special 
#	executable with setuid bit set 
#	executable with setgid bit set 
#	directory writable to others, with sticky bit 
#	directory writable to others, without sticky bit 
# LSCOLORS中，字母代表的颜色如下：
#	a black 黑色
#	b red 红色 
#	c green 绿色 
#	d brown 棕色 
#	e blue 蓝色 
#	f magenta 洋红色 
#	g cyan 青色 
#	h light grey 浅灰色 
#	A bold black, usually shows up as dark grey 黑色粗体 
#	B bold red 红色粗体 
#	C bold green 绿色粗体 
#	D bold brown, usually shows up as yellow 棕色粗体 
#	E bold blue 蓝色粗体 
#	F bold magenta 洋红色粗体 
#	G bold cyan 青色粗体 
#	H bold light grey; looks like bright white 浅灰色粗体 
#	x default foreground or background 系统默认颜色
##########################################################################
#export LSCOLORS=gxfxaxdxcxegedabagadac
#export LSCOLORS=ExGxGxdxCxegedabagadac

if [ "$TERM" != "dumb" ]; then
	eval `gdircolors -b $HOME/.dir_colors`
	#alias ls='ls -F --show-control-chars --color=auto'
	#alias ls='ls --color=auto'
	#test -r $HOME/.dir_color && eval "$(gdircolors -b $HOME/.dir_color)" || eval "$(gdircolors -b)"
	#eval `gdircolors $HOME/.dir_color`
fi

# User specific aliases and functions
alias ls='ls --color=auto'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
