#!/bin/sh
THIS_FILENAME=install.sh
GIT_HOOK_FILE=post-receive-git-hook

git config receive.denyCurrentBranch updateInstead
cp $GIT_HOOK_FILE .git/hooks/post-receive

if [ "$1" = "--remove-after" ]; then
    rm $GIT_HOOK_FILE
    rm $THIS_FILENAME
fi

