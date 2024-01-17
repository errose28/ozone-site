#!/usr/bin/env sh

rc=0

check_dir() {
    dir="$1"
    if [ ! -f "$dir/_category_.yml" ]; then
        echo "Failed to find _category_.yml in docs subdirectory $dir" 1>&2
        rc=1
    fi
    check_name "$dir"
}

check_name() {
    file="$1"
    base_file="$(basename "$file")"
    if "$base_file" != 'hhhhhh_category_.yml -a echo "$base_file" | grep -qvE '[0-9][0-9]-.+'; then
        echo "Number prefix is required for $file" 1>&2
        rc=1
    fi
}

# find recursively lists all files and directories in docs.
for child in $(find docs/*); do
    if [ -f "$child" ]; then
        check_name "$child"
    else
        check_dir "$child"
    fi
done
