#!/usr/bin/bash
git add test-2.txt
git status -sb
git describe --dirty
./version-gen.sh
