#!/bin/bash

# Opening tmux with an empty and a vim pane. To execute this file, use 'tmux-code' alias. #

tmux new -d -s CODE
tmux split-window -h
tmux resize-pane -R 27
tmux send-keys -t CODE.0 "vim"
tmux select-pane -t CODE.0
sleep 0.5
tmux send-keys -t CODE.0 C-m
tmux rename-window -t CODE.1 "Vim-Terminal"
tmux a -t CODE

