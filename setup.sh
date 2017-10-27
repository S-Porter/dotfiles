#!/bin/bash

conf_dir = $HOME/.config
dots_dir = $HOME/git/dotfiles
backup_dir = /tmp/config_backup

mkdir $backup_dir

# this lists the dotfiles dir, moves anything that already exists into a backup folder, then symlinks everything.
ls -1 $dots_dir | xargs -i{} mv $conf_dir/{} $backup_dir/ || true && ln -s $dots_dir/* $conf_dir

ln -sf $dots_dir/.vimrc $HOME
ln -sf $dots_dir/.zshrc $HOME
ln -sf $dots_dir/.tmux.conf $HOME
ln -sf $dots_dir/.tmux.conf.local $HOME
ln -sf $dots_dir/.extra $HOME
ln -sf $dots_dir/.aliases $HOME