#!/usr/bin/bash
git add .
git commit -m "delete test-1.txt"
git status
git describe --dirty
git tag -a master_v1.0.25 -m "test-#6"
git log --oneline -n 5
git describe --dirty