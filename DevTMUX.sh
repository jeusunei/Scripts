#!/bin/sh
tmux new-session -d -c ~/Documents/Projects/Programming -n programming -s deve 
tmux selectp -t deve
tmux split-window -h -c ~/Documents/Projects/Programming -p 40 
tmux split-window -v -c ~/Documents/Projects/Programming -p 60
tmux new-window -c ~/Documents/Projects/Programming -n reference
tmux new-window -c ~/WorkSpaces/CheatSheet -n CheatSheet 

ttmux send-keys -t deve:0.1 'g++ *.cpp -D DEBUG -o a.out 2> errorListing.dat' C-m

tmux send-keys -t deve:0.0 'clear' C-m
tmux send-keys -t deve:0.1 'clear' C-m
tmux send-keys -t deve:0.2 'clear' C-m

tmux send-keys -t deve:1.0 'clear' C-m
tmux send-keys -t deve:2.0 'clear' C-m

tmux send-keys -t deve:2.0 'ls -l' C-m

tmux choose-window -t programming
tmux attach -t deve
