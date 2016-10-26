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

export MEDIA=/run/media/magnusb


export PATH=$PATH:$HOME/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/feappv31/ver31/main/feappv:/usr/local/cuda-7.5/bin
export PATH=$PATH:/opt/

export PATH=$PATH:/opt/cisco/anyconnect/bin
export DATA=$MEDIA
export DROPBOX=$DATA/Dropbox
export LUH=$DROPBOX/LUH
export UNI=$LUH/16_17
export PSV=$UNI/PSV
export MODSIM=$UNI/mod_sim
export CM=$UNI/contact_mechanics
export IKM=$LUH/IKM_HIWI
export ELMO=$IKM/ElMoPy
export BACH=$IKM/Latex/bachelorarbeit

# Openfoam sourcing
source $HOME/OpenFOAM/OpenFOAM-v3.0+/etc/bashrc
export WM_NCOMPPROCS=8


export OPT=/opt
export NVIM=$HOME/.config/nvim

# Intel stuff
#export PATH=$PATH:/opt/intel:/opt/intel/vtune_amplifier_xe/bin64/
export PATH=$PATH:/opt/intel/compilers_and_libraries/linux/bin/intel64
export PATH=$PATH:/opt/intel/compilers_and_libraries/linux/mkl/bin
#source /opt/intel/intelpython35/bin/pythonvars.sh
#source activate py35

export PYTHONPATH="/media/magnus/Data/FEM/pyfem-1.0"
export PATH=$PATH:$HOME/.local/bin
export MYVIMRC=$HOME/.vimrc
alias vpnuni=' rdesktop -u cip-bau/badel -K -g 95% ts.cip-bau.uni-hannover.de'

export PYTHONPATH="${PYTHONPATH}:$HOME/.python/libs"
export LD_LIBRARY_PATH=/usr/local/lib:$HOME/KitWare/VTK/VTK_git/build/bin:$HOME/KitWare/VTK/VTK_git/build/lib
export PYTHONPATH=$PYTHONPATH:$HOME/KitWare/VTK/VTK_git/build/Wrapping/Python/vtk:$HOME/KitWare/VTK/VTK_git/build/lib:$HOME/KitWare/VTK/VTK_git/build/Wrapping/Python

export TERM=xterm-256color
export PATH=$PATH:$HOME/opt/neovim-qt/build/bin
export LLVM_CONFIG=/usr/bin/llvm-config

setxkbmap -option grp:alt_shift_toggle us,de

# Gruvbox true colors "
source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
