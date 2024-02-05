#!/usr/bin/env sh

root="$(git rev-parse --show-toplevel)"

# Check file content.
pnpm cspell lint --root="$root" --no-progress '**/*.md' '**/_category_.yml'
# Check file names.
find "$root"/docs "$root"/src/pages | pnpm cspell --no-progress --show-context stdin://URLs

