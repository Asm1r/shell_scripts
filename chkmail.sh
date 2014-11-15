#!/bin/sh
# Basicaly check if a directory is empty without subshell

DIR="$HOME/.mail/Inbox/new"

content=$(shopt -s nullglob dotglob; echo $DIR/*)
if (( ${#content} ))
then 
  echo -n "Mail "
else 
  echo -n "Nop "
  exit
fi
