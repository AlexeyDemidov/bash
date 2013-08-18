#!/usr/local/bin/bash

. ~/.functions

debug '> .bash_aliases'

if [ -f ~/.aliases ]
then
    . ~/.aliases
fi

debug '> .bash_aliases done'
