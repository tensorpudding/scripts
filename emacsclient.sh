#!/bin/sh
######################################
# emacsclient.sh : hack to run emacs #
######################################

if [ -S /tmp/emacs$UID/server ]; then
    # Run emacsclient if there is a server running already
    emacsclient -t $@
else
    # Run emacs otherwise
    emacs -nw $@
fi
