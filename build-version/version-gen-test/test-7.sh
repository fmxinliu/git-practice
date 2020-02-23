#!/usr/bin/bash
git describe --dirty
touch test-2.txt
git status -sb
git describe --dirty
../version-gen.sh
git log -n 1