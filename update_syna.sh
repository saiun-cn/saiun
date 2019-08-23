#!/usr/bin/env bash

if [ ! -d "themes" ];then
  echo "No themes directory, create it"
  mkdir themes
fi

if [ -d "themes/syna" ];then
  echo 'Find directoy "themes/syna", update by "git pull"'
  cd themes/syna
  git pull
  cd ../../
else
  echo 'Directoy "themes/syna" not found, do "ln -s"'
  cd themes
  ln -s ../../syna syna
  cd ../
fi