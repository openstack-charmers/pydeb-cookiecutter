#!/usr/bin/env sh

git init
git add .
git commit -a -m "Initial Cookiecutter Commit."

git checkout --orphan upstream
git rm -rf .
git commit --allow-empty -m 'Initial upstream branch.'
git checkout -f master
