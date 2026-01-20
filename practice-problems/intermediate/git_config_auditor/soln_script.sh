#! /bin/bash


git config --global --list 2>/dev/null
USER_NAME=$(git config --global user.name)
USER_EMAIL=$(git config --global user.email)
CORE_EDITOR=$(git config --global core.editor)

if [ -z "$USER_NAME" ]; then
    echo "Setting default user name to sy117"
    git config --global user.name "sy117"
fi


if [ -z "$USER_EMAIL" ]; then
    echo "Setting default user email to xyz@gmail.com"
    git config --global user.email "xyz@gmail.com"
fi

if [ -z "$CORE_EDITOR" ]; then
    echo "Setting default core editor to vim"
    git config --global core.editor "vim"
fi
