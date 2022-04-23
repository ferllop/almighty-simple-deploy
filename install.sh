#!/bin/sh

reinitialize(){
    rm -rf .gitignore post-receive-git-hook install.sh README.md
    git update-ref -d HEAD
    git rm --cached *
    git remote remove origin
    echo "Git project cleaned"
}

GIT_OK="Now this git repository accepts remote pushes into current branch"
GIT_NOT_OK="There was some error configuring this git repository to accept
remote pushes into current branch"

HOOK_OK="Hook installed"
HOOK_NOT_OK="There was some problem installing the git hook"

git config receive.denyCurrentBranch updateInstead && echo $GIT_OK || echo $GIT_NOT_OK
cp post-receive-git-hook .git/hooks/post-receive && echo $HOOK_OK || echo $HOOK_NOT_OK

while true; do
    read -p "Would you like this script to remove its files and commits? [yn]: " answer
    case $answer in
        [Yy] ) reinitialize; break;;
        [Nn] ) break;;
        * ) echo "Please answer with the letter y for yes or with the letter n for no.";;
    esac
done

echo "Done."
