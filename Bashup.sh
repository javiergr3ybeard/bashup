#!/bin/bash
  if [ -d ~/Documents/dotfiles ]; then
    echo "copying files to ~/Documents/dotfiles"
    cp -r ~/.{Xresources,bashrc,vimrc,xinitrc,config/i3,vim/colors,fehbg,Wallpapers,ncmpcpp,mpd} ~/Documents/dotfiles
    echo "files copied"
    cd ~/Documents/dotfiles && git add . && git commit -m 'backup with bashup' && git push -u origin master
  else 
    cd ~/Documents/
    git clone git@github.com:javiergr3ybeard/dotfiles.git
    echo "new directory at ~/Documents/dotfiles"
  fi
