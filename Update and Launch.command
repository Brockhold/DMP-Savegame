#!/bin/sh
# meant to be run from the KSP root folder; copied into /saves/DarkMultiPlayer only for git convenience.
here="`dirname \"$0\"`"
echo "cd-ing to $here"
cd "$here" || exit 1
cd saves/DarkMultiPlayer/
git pull || exit 1
cd ../../
mono DMPUpdater-development.exe -b
open KSP.app/Contents/MacOS/Kerbal\ Space\ Program
cd saves/DarkMultiPlayer/
git status -s
git add -u # danger, stages ALL CHANGES
git commit -m "automated commit of new updates"
git push
