#!/bin/bash
echo Starting git process.
echo please input your rsa key for the project.
read pass
while :
do
	git add .
	git status
	echo The comment for git:
	read input
	git commit -m "$input"
	git push
done
