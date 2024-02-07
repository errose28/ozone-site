#!/usr/bin/env sh

root="$(git rev-parse --show-toplevel)"

echo 'Checking document content...'
pnpm cspell lint --root="$root" --no-progress '**/*.md' '**/_category_.yml'

echo 'Checking file names...'
find "$root"/docs "$root"/src/pages | pnpm cspell --no-progress --show-context stdin://URLs

