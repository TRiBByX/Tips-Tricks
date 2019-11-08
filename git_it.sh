#!/bin/bash

git add .
git status
echo The comment for git:
read input
git commit -m "$input"
git push
