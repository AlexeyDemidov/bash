#!/usr/bin/env bash
# .bash_profile

. $HOME/.functions

debug "> .bash_profile"
#export PS4='+xtrace $LINENO: '
#set -x

if [ -f $HOME/.profile ]; then
    . $HOME/.profile
fi

# Get the environment
if [ -f ~/.bash_env ]; then
    export BASH_ENV=$HOME/.bash_env
	. ~/.bash_env
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

debug "> .bash_profile end"
