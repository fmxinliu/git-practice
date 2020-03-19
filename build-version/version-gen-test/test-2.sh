#!/usr/bin/bash
git add test-1.txt
git status -sb
git describe --dirty
../version-gen.sh
