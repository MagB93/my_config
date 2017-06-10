#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# User specific aliases and functions
export MEDIA=/media
export DATA=$MEDIA/Data
export DROPBOX=$HOME/Dropbox
export LUH=$DROPBOX/LUH
export UNI=$LUH/17
export OPT=$HOME/opt
export FLBM=$OPT/ForOpenLBM

export LBM=$HOME/.julia/v0.5/LatticeBoltzmann
alias julia6=$OPT/julia/julia

export TERM=xterm-256color
export PFUNIT=/usr/local
alias matlab=$OPT/Matlab/R2017a/bin/matlab
alias la='ls -la'
export TERM=xterm-256color
# screenfetch
