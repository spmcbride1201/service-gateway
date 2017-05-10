#!/bin/bash

# Delete existing build assets
rm -r dist
rm dist.tar.gz

# Copy deployable assets to dist staging area
mkdir dist
cp -r templates dist/templates
cp -r css dist/css
cp -r images dist/images
cp -r js dist/js

# Generate tarball
tar -czf dist.tar.gz dist