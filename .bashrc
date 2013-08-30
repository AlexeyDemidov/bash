# .bashrc



case "$-" in
    *i*) # code for interactive shell here
        export HISTCONTROL=erasedups
        export HISTSIZE=10000
        export HISTFILESIZE=50000
        export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "
        shopt -s histappend
        ;;
    *) # code for non-interactive shell
        return
        ;;
esac

. ~/.functions
debug '> .bashrc loaded'

# User specific aliases and functions

umask 022

ENV=$HOME/.shrc; export ENV

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

#if [ -f ~/.env ]; then
#        . ~/.env
#fi

if [ -f ~/.bashrc.${HOSTNAME} ]; then
        . ~/.bashrc.$HOSTNAME
fi

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

if [ -f /etc/bash_completion ]; then 
    . /etc/bash_completion 
fi

if [ -f ~/.bash_prompt ]
then
    . ~/.bash_prompt
else
    PS1='$'
fi

export PS1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s '/usr/local/lib/rvm' ]] && source '/usr/local/lib/rvm'
[[ -s '/etc/profile.d/rvm.sh' ]] && source '/etc/profile.d/rvm.sh'
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

if [[ -r /Applications/Xcode.app/Contents//Developer/usr/share/git-core/git-completion.bash ]]; then
  source /Applications/Xcode.app/Contents//Developer/usr/share/git-core/git-completion.bash
  source /Applications/Xcode.app/Contents//Developer/usr/share/git-core/git-prompt.sh
fi

debug '> .bashrc done'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
