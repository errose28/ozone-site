# Link Format Testing Guide

This is a comprehensive guide to test how different markdown link formats behave with Docusaurus versioning.

## Current Page Location

- **In version 1.0.0**: This file is at `/versioned_docs/version-1.0.0/99-link-format-tests.md`
- **In current/next**: This file is at `/docs/99-link-format-tests.md`

## Test Cases

### 1. Sibling File Links (Same Directory Level)

Test linking to `99-versioning-link-test.md` which is in the same directory:

**URL path (recommended)**:
[Versioning Test](versioning-link-test)

**Relative URL path**:
[Versioning Test](./versioning-link-test)

### 2. Subdirectory Links

Test linking to files in subdirectories:

**URL path to docker guide**:
[Docker Installation](quick-start/installation/docker)

**URL path to reading/writing guide**:
[Reading and Writing Data](quick-start/reading-writing-data)

### 3. Parent Directory Links

Test linking to files in parent or different directory trees:

**URL path to architecture overview**:
[Architecture Overview](core-concepts/architecture/overview)

**URL path to Ozone Manager**:
[Ozone Manager](core-concepts/architecture/ozone-manager)

### 4. Deep Nested Links

**URL path to security config**:
[Kerberos Configuration](administrator-guide/configuration/security/kerberos)

**URL path to transparent encryption**:
[Transparent Data Encryption](administrator-guide/configuration/security/encryption/transparent-data-encryption)

### 5. Links with Fragments

**With section anchor**:
[Docker Installation - Prerequisites](quick-start/installation/docker#prerequisites)

**Self-reference with anchor**:
[Back to Test Cases](#test-cases)

### 6. Root-level Links

**FAQ page**:
[FAQ](/faq)

**Download page**:
[Download](/download)

## Observations to Make

When testing, observe:

1. ✅ **Do links stay within the same version?**
   - If you're viewing version 1.0.0, links should resolve to 1.0.0
   - If you're viewing "Next", links should resolve to "Next"

2. ✅ **Do URL paths work correctly?**
   - Links without `.md` extension should resolve properly
   - Number prefixes (like `01-`, `02-`) should be automatically stripped

3. ✅ **Do fragments work?**
   - Links with `#section-name` should scroll to the correct section

4. ❌ **What breaks?**
   - File paths with `.md` extensions should be avoided
   - Links with number prefixes should be avoided

## Testing Instructions

1. **Build the site**:
   ```bash
   pnpm build
   ```

2. **Serve locally**:
   ```bash
   pnpm serve --port 3001
   ```

3. **Test both versions**:
   - Open http://localhost:3001/docs/link-format-tests (version 1.0.0 - latest)
   - Open http://localhost:3001/docs/next/link-format-tests (current/next version)

4. **Click each link and verify**:
   - Check the URL bar to see which version you land on
   - Verify the content matches the expected version
   - Test that fragments scroll to the correct section

## Expected Results

| Link Type | Format | Should Work? | Notes |
|-----------|--------|--------------|-------|
| URL path | `[Text](path/to/page)` | ✅ Yes | Recommended, version-aware |
| URL path with fragment | `[Text](path/to/page#section)` | ✅ Yes | Version-aware with scroll |
| Relative URL | `[Text](./page)` | ✅ Yes | Works for same directory |
| Root absolute | `[Text](/page)` | ✅ Yes | Goes to latest version |
| File path with .md | `[Text](path/file.md)` | ❌ No | Breaks versioning, flagged by our validator |
| Number prefixes | `[Text](01-folder/02-file)` | ⚠️ Maybe | Works but fragile, flagged by our validator |

## Why URL Paths Are Better

From the [Docusaurus docs on versioning](https://docusaurus.io/docs/versioning#link-docs-by-file-paths):

> "Refer to other docs by relative file paths with the .md extension, so that Docusaurus can rewrite them to actual URL paths during building."

However, this advice is outdated for newer Docusaurus versions. The modern best practice is:

✅ **Use URL paths without extensions** - They're:
- More resilient to file renames
- Automatically version-aware
- Cleaner and more maintainable
- Don't break when files are reorganized
