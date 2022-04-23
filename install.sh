#!/bin/sh
GIT_OK="Now this git repository accepts remote pushes into current branch"
GIT_NOT_OK="There was some error configuring this git repository to accept
remote pushes into current branch"

HOOK_OK="Hook installed"
HOOK_NOT_OK="There was some problem installing the git hook"

git config receive.denyCurrentBranch updateInstead && echo $GIT_OK || echo $GIT_NOT_OK
cp post-receive-git-hook .git/hooks/post-receive && echo $HOOK_OK || echo $HOOK_NOT_OK

echo "Done."

