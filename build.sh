#!/bin/bash
set -e

mkdir -p dist
cp index.html dist/index.html
cp seed-ready.html dist/seed-ready.html 2>/dev/null || true

echo "Build concluído."
