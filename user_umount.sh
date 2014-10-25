#!/bin/sh

#Used with user_umount.sh, se doc there.

DIR="/mnt/$1"
[[ `grep $DIR /etc/mtab` ]] && umount -f $DIR
[ -d $DIR ] && rm -rf $DIR
