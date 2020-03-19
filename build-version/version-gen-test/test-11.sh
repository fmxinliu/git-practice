#!/usr/bin/bash
git tag -d $(git tag)
git tag
./version-gen.sh
git describe --dirty