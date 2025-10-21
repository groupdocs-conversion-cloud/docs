#!/bin/bash
git submodule init
git submodule update
git submodule foreach 'git fetch origin; git checkout $(git rev-parse --abbrev-ref HEAD); git reset --hard origin/$(git rev-parse --abbrev-ref HEAD); git submodule update --recursive; git clean -dfx'
rm -rf docs-cloud-common/content/conversion
cp -R content docs-cloud-common
cd docs-cloud-common
hugo server --config=config-geekdoc.toml
