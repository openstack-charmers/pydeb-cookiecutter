#!/usr/bin/env sh

git init
git add .
git commit -a -m "Initial Cookiecutter Commit."

# Create empty upstream branch
git checkout --orphan upstream
git rm -rf .
git commit --allow-empty -m 'Initial upstream branch.'
git checkout -f master

# Import initial version using uscan and gbp
upstream_version=$(dpkg-parsechangelog -S Version | cut -f 1 -d -)
package_name=$(dpkg-parsechangelog -S Source)
uscan --verbose --force-download --rename --download-version=$upstream_version
gbp import-orig --upstream-version=$upstream_version ../${package_name}_${upstream_version}.orig.tar.gz
