# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH:$HOME/opt/julia/julia-2174801a77/bin"

# User specific aliases and functions
export MEDIA=/media/magnus
export DATA=$MEDIA/Data
export DROPBOX=$HOME/Dropbox
export LUH=$DROPBOX/LUH
export UNI=$LUH/17
export OPT=$HOME/opt

export FLBM=$OPT/ForOpenLBM
export LBM=$HOME/.julia/v0.6/LatticeBoltzmann
export PATH=$PATH:$OPT/julia/
export JULIA_NUM_THREADS=4

export PFUNIT=/usr/local
alias la='ls -la --color=always' 
export NVIM=$HOME/.config/nvim
