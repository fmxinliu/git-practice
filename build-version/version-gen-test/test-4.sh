#!/usr/bin/bash
git diff -- HEAD test-1.txt
git status -sb
git describe --dirty
../version-gen.sh
