#! /bin/bash

echo "Checking merged branches into main..."

# checkout to main branch
git checkout main &>/dev/null

branches=$(git branch --merged main | grep -v -E "^(main|develop)$")

if [ -z "$branches" ]
then
    echo "No merged branches to delete"
    exit 0
fi

echo "Deleting these merged branches."
echo "$branches"
echo ""

read -p "Confirm if you want to delete these branches? (y/n): " confirm

if [ "$confirm" = "y" ]
then
    for branch in $branches
    do
        git branch -d $branch # local branch
        git push origin --delete $branch # remote branch
    done
    echo "Merged branches deleted successfully"
else
    echo "Skipping deletion"
fi


# Example usage:
# ./soln_script.sh