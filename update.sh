#!/bin/sh
git pull
git status -s
git add -A
git status -s
git commit -m "automated update from Ubuntu"
git push
