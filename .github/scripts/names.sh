#!/usr/bin/env sh

# Checks all page files and their parent directories to ensure that they use docusaurus number prefixes and are named all lower case with kebab-case.

root="$(git rev-parse --show-toplevel)"
rc=0

dir_regex='[a-z0-9][a-z0-9./-]*[a-z0-9]'
file_regex="$valid_doc_regex.md"
doc_dir_regex="[0-9][0-9]-$valid_dir_regex"
doc_file_regex="[0-9][0-9]-$valid_file_regex"

# TODO check is only running on docs directories and it is failing.

# Check docs pages. These must use number prefixes.
for file in $(find "$root"/docs); do
    name="$(basename "$file")"
    # Check docs directories.
    if [ -d "$file" ]; then

        echo "check $name"
        if echo "$name" | grep -Exvq "$doc_dir_regex"; then
            echo "Disallowed doc directory name: $file" 1>&2
            rc=1
        fi
    # Check docs files.
    elif echo "$name" | grep -q '*.md'; then
        echo "check $name"
        if echo "$name" | grep -Exvq "$doc_file_regex"; then
            echo "Disallowed doc file name: $file" 1>&2
            rc=1
        fi
    fi
done

# Check regular pages. These do not have number prefixes.
for file in $(find "$root"/src/pages); do
    name="$(basename "$file")"
    # Check directories.
    if [ -d "$file" ]; then

        echo "check $name"
        if echo "$name" | grep -Exvq "$dir_regex"; then
            echo "Disallowed directory name: $file" 1>&2
            rc=1
        fi
    # Check files.
    elif echo "$name" | grep -q '*.md'; then

        echo "check $name"
        if echo "$name" | grep -Exvq "$file_regex"; then
            echo "Disallowed file name: $file" 1>&2
            rc=1
        fi
    fi
done

exit "$rc"

