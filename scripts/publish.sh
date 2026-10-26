#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if [[ -e .git ]]; then
  echo "Git already exists here. Stopping to preserve your current history and staged changes."
  exit 1
fi

git init -b main
git add .gitignore README.md package.json tsconfig.json next-env.d.ts postcss.config.mjs eslint.config.mjs scripts/publish.sh
git commit -m "chore: initialize Next.js and TypeScript project configuration"

git add data public
git commit -m "feat: add SONORA product catalog and original product illustrations"

git add app components
git commit -m "feat: build responsive storefront with product pages and shopping interactions"

git remote add origin https://github.com/almamuncode/sonora.git
git push -u origin main

echo "Published SONORA with three meaningful commits."
