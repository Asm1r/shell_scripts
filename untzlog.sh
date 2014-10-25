#!/bin/sh

# Script used to login to Tuzla University network.
# Created by asmir [at] archlinux [dot] us.
#

CURL="/usr/bin/curl"
USER="<ime.prezime@student.fakultet.untz.ba"
PASS="<pass, mostly JMBG>"
HOST="172.16.15.1"
PORT="8000"
FLAGS="-v"


$CURL 	--data "auth_user=$USER&auth_pass=$PASS&accept=Prijava" \
	$HOST:$PORT/ \
	$FLAGS

#EOF
