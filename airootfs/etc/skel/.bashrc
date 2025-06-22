#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Ble.sh
# https://wiki.archlinux.org/title/Bash#Syntax_highlighting_and_autosuggestions
# https://github.com/akinomyoga/ble.sh?tab=readme-ov-file#13-set-up-bashrc
#source /usr/share/blesh/ble.sh --noattach

# don't put duplicate lines or lines starting with space in the history.
# https://www.geeksforgeeks.org/histcontrol-command-in-linux-with-examples/
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Auto cd when entering just a path
# https://wiki.archlinux.org/title/Bash#Auto_%22cd%22_when_entering_just_a_path
shopt -s autocd

# nano as default editor
export VISUAL="/usr/bin/nano"
export EDITOR="$VISUAL"

# https://robotmoon.com/bash-prompt-generator/
PS1="\[$(tput setaf 27)\]\u\[$(tput setaf 63)\]@\[$(tput setaf 99)\]\h \[$(tput setaf 159)\]\w \[$(tput setaf 69)\]\$\[$(tput sgr0)\] "
#PS1='[\u@\h \W]\$ '

# Alias definitions
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# Command not found
# https://wiki.archlinux.org/title/Bash#Command_not_found
#source /usr/share/doc/pkgfile/command-not-found.bash

# https://github.com/akinomyoga/ble.sh?tab=readme-ov-file#13-set-up-bashrc
#[[ ! ${BLE_VERSION-} ]] || ble-attach

# https://superuser.com/questions/789448/#comment1029143_789465
[[ $- == *i* ]] && cat /etc/motd
