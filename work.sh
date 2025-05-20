#!/bin/bash

SESSION="work"

# Start new tmux session
tmux new-session -d -s $SESSION

# Window 0 - quintype
tmux rename-window -t $SESSION:0 'quintype'
tmux send-keys -t $SESSION:0 'cd ~/github/work/infraspec/clients/base14/clients/quintype' C-m

# Window 1 - dpd0
tmux new-window -t $SESSION:1 -n 'dpd0'
tmux send-keys -t $SESSION:1 'cd ~/github/work/infraspec/clients/base14/clients/dpdzero' C-m

# Window 2 - base14
tmux new-window -t $SESSION:2 -n 'base14'
tmux send-keys -t $SESSION:2 'cd ~/github/work/infraspec/clients/base14' C-m

# Window 3 - infraspec
tmux new-window -t $SESSION:3 -n 'infraspec'
tmux send-keys -t $SESSION:3 'cd ~/github/work/infraspec' C-m

# Window 4 - web (qutebrowser)
tmux new-window -t $SESSION:4 -n 'web'
tmux send-keys -t $SESSION:4 'qutebrowser' C-m

# Window 5 - otel-col
tmux new-window -t $SESSION:5 -n 'otel-col'
tmux send-keys -t $SESSION:5 'cd ~/github/apps/python/otel-learning' C-m

# Window 6 - k9s
tmux new-window -t $SESSION:6 -n 'k9s'
tmux send-keys -t $SESSION:6 'k9s' C-m

# Attach to session
tmux attach-session -t $SESSION

