#!/bin/sh

echo("Installing needed programms....")

pacman -S clang neovim julia dropbox hdf llvm gsl inkscape texlive openmpi

yaourt -S paraview- qt5
