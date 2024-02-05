#!/usr/bin/env sh

# Checks all URLs contained in the sitemap.xml file in the build to ensure the contain only allowed characters.
# All URLs on the Ozone site should use kebab-case with lowercase letters.

sitemap="$1"

if [ -z "$sitemap" ]; then
    echo "Requires path to sitemap.xml file as the first argument." 1>&2
    exit 1
fi

rc=0
valid_url_regex='https://ozone.apache.org/[a-z0-9][a-z0-9./-]*[a-z0-9/]'

for url in $(yq --output-format=props '.urlset.url[].loc' "$sitemap"); do
    if echo "$url" | grep -vx 'https://ozone.apache.org/' | grep -Exvq "$valid_url_regex"; then
        echo "Disallowed URL format: $url" 1>&2
        rc=1
    fi
done

if [ "$rc" != 0 ]; then
    echo "Found URLs in the build that do match the allowed URL regex: $valid_url_regex" 1>&2
fi

exit "$rc"

