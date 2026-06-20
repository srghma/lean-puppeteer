#!/usr/bin/env bash
set -e
export PATH="$HOME/.elan/bin:$PATH"
echo "Building..."
lake build puppeteer mk_all checkInitImports test_runner
echo "Running smoke test..."
./.lake/build/bin/puppeteer
echo "Running all tests..."
./.lake/build/bin/test_runner
echo "All tests passed!"
