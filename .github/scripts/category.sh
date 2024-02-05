#!/usr/bin/env sh

# Validates docusaurus _category_.yml files used to configure the docs sidebar.

rc=0

root="$(git rev-parse --show-toplevel)"
schema="$root"/.github/resource/category.schema.json

check_dir() {
    dir="$1"
    category_file="$dir/_category_.yml"
    if [ ! -f "$category_file" ]; then
        echo "_category_.yml is required for docs subdirectory $dir" 1>&2
        rc=1
    elif ! pnpm ajv validate --errors=text -s "$schema" -d "$category_file" 1>/dev/null; then
        # Ensure the category file contains only allowed keys.
        rc=1
    fi
}

for child in $(find "$root"/docs/*); do
    if [ -d "$child" ]; then
        check_dir "$child"
    fi
done

exit "$rc"

