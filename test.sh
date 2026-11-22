#!/bin/bash
set -e
test -f dist/index.html || { echo "FAIL: dist/index.html missing"; exit 1; }
grep -q "Hello Jenkins" dist/index.html || { echo "FAIL: greeting missing"; exit 1; }
echo "All tests passed"
