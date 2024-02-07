#!/usr/bin/env sh

root="$(git rev-parse --show-toplevel)"
schema="$root"/.github/resource/frontmatter.schema.json
rc=0

# Used to hold extracted frontmatter since ajv cannot read input from stdin.
frontmatter_file="$(mktemp).json"

for file in $(find "$root"/docs -type f -iname '*.md'); do
  # Workaround since yq seems to have issues with files that do not have frontmatter defined.
  if yq --front-matter=extract --output-format=json "$file" 2>/dev/null 1>"$frontmatter_file"; then
    # Ignore stdout which always prints whether validation passed.
    if ! pnpm ajv validate --errors=text -s "$schema" -d "$frontmatter_file" 1>/dev/null; then
      echo "^ Frontmatter validation failed for $file" 1>&2
      rc=1
    fi
  fi
done

if [ "$rc" != 0 ]; then
  echo "\nThere were frontmatter validation failures against the schema $schema" 1>&2
fi

exit "$rc"
