#!/bin/bash

git config --global user.email "$GITHUB_USER_EMAIL"
git config --global user.name "$GITHUB_USER_NAME"

git add data/editor-installers.json
git commit -m "Updated editor-installers.json [skip ci]"
git remote add github "https://$GITHUB_TOKEN@github.com/neogeek/unity-ci-tools"
git push github HEAD:"$TRAVIS_BRANCH"
