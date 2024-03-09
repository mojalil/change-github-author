#!/bin/bash

# Check for necessary parameters
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 OLD_EMAIL CORRECT_NAME CORRECT_EMAIL"
    exit 1
fi

# Assigning passed arguments to variables
OLD_EMAIL=$1
CORRECT_NAME=$2
CORRECT_EMAIL=$3

# Running the git filter-branch command
git filter-branch --env-filter "
if [ \"\$GIT_COMMITTER_EMAIL\" = '$OLD_EMAIL' ]
then
    export GIT_COMMITTER_NAME='$CORRECT_NAME'
    export GIT_COMMITTER_EMAIL='$CORRECT_EMAIL'
fi
if [ \"\$GIT_AUTHOR_EMAIL\" = '$OLD_EMAIL' ]
then
    export GIT_AUTHOR_NAME='$CORRECT_NAME'
    export GIT_AUTHOR_EMAIL='$CORRECT_EMAIL'
fi
" --tag-name-filter cat -- --branches --tags

echo "Author information changed for commits with email '$OLD_EMAIL'."
