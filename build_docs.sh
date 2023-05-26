#!/bin/bash
git submodule update --init --recursive docs-cloud-common
rm -rf docs-cloud-common/content/conversion
cp -R content docs-cloud-common
cd docs-cloud-common
hugo server
