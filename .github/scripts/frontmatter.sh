#!/usr/bin/env sh

root="$(git rev-parse --show-toplevel)"
schema="$root"/.github/resource/frontmatter.schema.json

# Used to hold extracted frontmatter since ajv cannot read input from stdin.
frontmatter_file="$(mktemp).json"

for file in $(find "$root"/docs -type f -iname '*.md'); do
  # Workaround since yq seems to have issues with files that do not have frontmatter defined.
  if yq --front-matter=extract --output-format=json "$file" 2>/dev/null 1>"$frontmatter_file"; then
    # Ignore stdout which always prints whether validation passed.
    pnpm ajv validate --errors=text -s "$schema" -d "$frontmatter_file" 1>/dev/null || echo "^ Validation failed for $file"
  fi
done

