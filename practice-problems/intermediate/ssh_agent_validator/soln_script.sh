#! /bin/bash

# check env variabble 
if [ -z "$SSH_AUTH_SOCK" ]
then
    echo "SSH agent is not running, starting it..."
    eval "$(ssh-agent -s)"
else
    echo "SSH agent is running"
fi

if ! ssh-add -l >/dev/null 2>&1
then
    echo "No keys loaded. Please add a key using: ssh-add <path-to-key>"
    exit 1
else
    echo "Keys are loaded"
    ssh-add -l
fi

# Example usage:
# ./soln_script.sh


# key generation guide:
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# ssh-keygen -t ed25519 -C "your_email@example.com"