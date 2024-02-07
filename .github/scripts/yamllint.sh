#!/usr/bin/env sh

root="$(git rev-parse --show-toplevel)"
yamllint "$root"
