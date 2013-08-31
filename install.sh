#!/bin/bash
############################
# .install.sh
# This scripts creates symlinks from the home directory to all dotfiles in ~/dotfiles
############################

############### Variables

dir=~/dotfiles                 # dotfiles directory
olddir=~/dotfiles_old          # dotfiles backup directory
files="bashrc bash_profile bash_aliases vimrc gemrc "     # list of files/folders to symlink

###############

# create dotfiles_old in home directory
echo "Creating $olddir to backup any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# cd to dotfiles directory
echo "Changing to $dir directory"
cd $dir
echo "...done"

# Move existing dotfiles to dotfiles_old, then create symlinks
for file in $files; do
    echo "Moving existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
