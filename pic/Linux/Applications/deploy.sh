#!/bin/bash

echo -e "Deploying updates to GitHub..."
echo ""

# build the project
#hugo -t even
hugo --theme=even --baseUrl=https://chenxiaopang.github.io

cd public

git add .

msg="rebuilding site `date`"

if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"

# push source to github

git push upstream master

# come back to blog root

cd ..

