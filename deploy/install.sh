#!/bin/sh
if [ -z "$1" ]; then
    echo "Please provide a port where the app must run"
else 
    git config receive.denyCurrentBranch updateInstead
    cp ./post-receive-git-hook ../.git/hooks/post-receive
fi
