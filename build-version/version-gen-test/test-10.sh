#!/usr/bin/bash
git rm test-2.txt
git commit -m "delete test-2.txt"
git status -sb
git describe --dirty
git tag -a master_v1.0.27 -m "test-#10"
git log --oneline -n 5
