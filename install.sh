#!/bin/sh
git config receive.denyCurrentBranch updateInstead
cp ./post-receive-git-hook ../.git/hooks/post-receive
