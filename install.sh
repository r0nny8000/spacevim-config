#!/bin/bash

pwd=$(pwd)

echo "origin: $pwd"

echo -n 'Creating symbolic links...'

cd ~ || exit

mv .SpaceVim.d .SpaceVim.d.legacy

ln -s "$pwd" .SpaceVim.d

echo ' done.'

cd "$pwd" || exit
