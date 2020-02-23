#!/usr/bin/bash
touch test-1.txt
git status -sb
git describe --dirty
../version-gen.sh
git log -n 1
