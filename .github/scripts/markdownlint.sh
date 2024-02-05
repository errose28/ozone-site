#!/usr/bin/env sh

root="$(git rev-parse --show-toplevel)"

pnpm markdownlint "$root"

