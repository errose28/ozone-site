#!/usr/bin/env sh

# Checks all page files and their parent directories to ensure that they use docusaurus number prefixes and are named all lower case with kebab-case.

root="$(git rev-parse --show-toplevel)"
rc=0

dir_regex='[a-z0-9][a-z0-9./-]*[a-z0-9]'
file_regex="$dir_regex\.md"
doc_dir_regex="[0-9][0-9]-$dir_regex"
doc_file_regex="[0-9][0-9]-$file_regex"

check_regex() {
    file="$1"
    regex="$2"
    if ! echo "$(basename "$file")" | grep -Exq "$regex"; then
        echo "$file does not match regex $regex" 1>&2
        rc=1
    fi
}

is_markdown() {
    file="$1"
    echo "$(basename "$file")" | grep -Exq '.+\.md'
}

# Check docs pages. These must use number prefixes.
for file in $(find "$root"/docs/*); do
    if [ -d "$file" ]; then
        # Check docs directories.
        check_regex "$file" "$doc_dir_regex"
    elif is_markdown "$file"; then
        # Check docs files.
        check_regex "$file" "$doc_file_regex"
    fi
done

# Check regular pages. These do not have number prefixes.
for file in $(find "$root"/src/pages/*); do
    name="$(basename "$file")"
    # Check directories.
    if [ -d "$file" ]; then
        check_regex "$file" "$dir_regex"
    # Check files.
    elif is_markdown "$file"; then
        check_regex "$file" "$file_regex"
    fi
done

exit "$rc"

