#!/bin/bash

pwd=$(pwd)

echo "origin: $pwd"

echo 'Creating symbolic links...'

cd ~ || exit

echo -n 'in: '
pwd

echo 'delete or backup...'
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




echo 'creating...'
ln -s "$pwd" .SpaceVim.d
ln -s "$pwd/gvimrc" .gvimrc

echo 'done.'

cd "$pwd" || exit
