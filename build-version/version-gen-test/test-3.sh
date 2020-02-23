#!/usr/bin/bash
git commit -m "version-gen-test-#1"
git status -sb
git describe --dirty
../version-gen.sh
git log -n 1