# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ "$TERM" != "dumb" ]; then
    #eval `gdircolors -b /etc/DIR_COLORS`
    eval `dircolors -b /etc/DIR_COLORS`
    #alias ls='ls -F --show-control-chars --color=auto'
    #alias ls='ls --color=auto'
    #test -r $HOME/.dir_color && eval "$(gdircolors -b $HOME/.dir_color)" || eval "$(gdircolors -b)"
    #eval `gdircolors $HOME/.dir_color`
fi

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
