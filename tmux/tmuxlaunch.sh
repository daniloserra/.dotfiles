#!/bin/sh 

SESSIONNAME=devpy
WIN1=python
WORKINGDIR='~/teste'

tmux new-session -d -s $SESSIONNAME
tmux rename-window -t $SESSIONNAME $WIN1

tmux send-keys 'cd '$WORKINGDIR 'C-m'
tmux send-keys 'ranger' 'C-m'

tmux split-window -h

tmux resize-pane -R 100
tmux send-keys 'cd '$WORKINGDIR 'C-m'
tmux send-keys 'clear && python' 'C-m'

tmux split-window -v

tmux resize-pane -D 40
tmux send-keys 'cd '$WORKINGDIR 'C-m'
tmux send-keys 'ls -lah' 'C-m'
tmux select-pane -t 0

tmux a
