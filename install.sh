#!/bin/bash

pwd=$(pwd)


echo 'Creating symbolic links'

cd ~ || exit

echo -n 'from: '
echo "to:   $pwd"
pwd

echo 'delete exisitng lins or backup existing files/directories...'
if [ -h .SpaceVim.d ]; then
  rm .SpaceVim.d
fi

if [ -d .SpaceVim.d ]; then
  mv .SpaceVim.d .SpaceVim.d.legacy
fi

if [ -h .gvimrc ]; then
  rm .gvimrc
fi

if [ -f .gvimrc ]; then
  mv .gvimrc .gvimrc.legacy
fi


echo 'creating links...'
ln -s "$pwd" .SpaceVim.d
ln -s "$pwd/gvimrc" .gvimrc

echo 'done.'

cd "$pwd" || exit
