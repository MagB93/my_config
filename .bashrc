# .bashrc Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# Custom stuff

export CONF=$HOME/.config
export NVIMCF=$CONF/nvim
export MEDIA=/media
export DATA=$MEDIA/Data
export DROPBOX=$HOME/Dropbox
export LUH=$DROPBOX/LUH
export UNI=$LUH/17
export OPT=$HOME/opt

export LBM=$HOME/.julia/v0.6/LatticeBoltzmann
export FLBM=$OPT/ForOpenLBM

export TERM=xterm-256color
export MTP_NO_PROBE="1"

export PFUNIT=/usr/local

# Aliases
alias la='ls -la'
alias suspend='systemctl suspend'

# GNU global configuration
echo export GTAGSLABEL=pygments >> .profile
export TERiM=xterm-256color

setxkbmap dvorak,de -option 'ctrl:nocaps, grp:alt_shift_toggle'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
