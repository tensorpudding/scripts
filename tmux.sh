#!/bin/sh
# A helpful script for starting tmux
if $(tmux has-session); then
    tmux attach-session
else tmux new-session
fi
