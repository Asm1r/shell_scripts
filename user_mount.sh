#!/bin/sh

# Script to make a dir and mount drive passed on $1 in it
# used by udev rule to automount devices
# Mail: asmir at archlinux dot us; Github: Asm1r
#

DIR="/mnt/$1"
MNTOPT="gid=users,fmask=113,dmask=002"

[ ! -d $DIR ] && mkdir $DIR
mount /dev/$1 $DIR -o $MNTOPT || rm $DIR
