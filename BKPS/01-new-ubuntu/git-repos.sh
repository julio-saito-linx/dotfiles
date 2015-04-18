#!/usr/bin/env bash

#first accepts ssh keys
ssh -T -o "StrictHostKeyChecking no" git@github.com; ssh -T -o "StrictHostKeyChecking no" git@gist.github.com; ssh -T -o "StrictHostKeyChecking no" git@bitbucket.org

cd ~
mkdir _git
cd _git

# all repos in a bulk
git clone git@bitbucket.org:saitodisse/latife-jekyll.git
git clone git@github.com:saitodisse/saitodisse.github.io.git
git clone git@github.com:saitodisse/azk.git
git clone git@github.com:saitodisse/javascript-inheritance.git
git clone git@github.com:saitodisse/shell-training.git
git clone git@github.com:saitodisse/humanjs-codealong-app.git

# mogger repos
mkdir mogger-root
cd mogger-root
git clone git@github.com:saitodisse/meld.git
git clone git@github.com:saitodisse/mogger.git
git clone git@github.com:saitodisse/colorful-logger.git
git clone -b gh-pages git@github.com:saitodisse/colorful-logger.git ghColorfulLogger
git clone git@github.com:saitodisse/mogger.git
git clone -b gh-pages git@github.com:saitodisse/mogger.git ghMogger
cd ..

# gists
mkdir gists
cd gists
git clone git@gist.github.com:/3655702.git ubuntu14.04
git clone git@gist.github.com:/3655702.git ubuntu14.04
cd ..