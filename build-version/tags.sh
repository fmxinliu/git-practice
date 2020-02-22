#!/usr/bin/bash

# delete all tags
git tag -d $(git tag -l)

# add tags
git tag -a "master_v1.0.10"  -m "undo-chapter"              6b601a3
git tag -a "master_v1.0.11"  -m "delete-chapter"            fe92b0c
git tag -a "master_v1.0.12"  -m "checkout usage #1"         c2389fe
git tag -a "master_v1.0.14"  -m "checkout usage #2"         f79256d
git tag -a "master_v1.0.15"  -m "commands:git branch"       0b4a429
git tag -a "master_v1.0.16"  -m "commands:git tag"          fa97674
git tag -a "master_v1.0.17"  -m "github-associate-chapter"  1f427ce
git tag -a "master_v1.0.18"  -m "commands:git remote"       6210d5c
git tag -a "master_v1.0.19"  -m "commands:git push"         1db3d42
git tag -a "master_v1.0.21"  -m "version-gen"               841c059
git tag -a "master_v1.0.6"   -m "basic commands"            f0026b7
git tag -a "master_v1.0.9"   -m "modify-chapter"            76ed32c

# list all tags
git tag -n

# show logs
git log --oneline