#!/bin/bash
set -e

# Delete current release tag
if git show-ref --tags latest --quiet; then
  gh release delete latest --cleanup-tag -y
fi
echo "🚀Ready for release"
