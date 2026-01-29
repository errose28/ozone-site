# Versioning Link Test

This document tests different link formats in Docusaurus versioning.

## Link Format Tests

### Test 1: URL Path (No Extension, No Number Prefix) - RECOMMENDED ✅
Link to Docker installation using URL path:
[Docker Installation](quick-start/installation/docker)

### Test 2: Relative URL Path with ./ 
Link with explicit relative path to another test file:
[Link Format Tests](./link-format-tests)

### Test 3: File Path with .md Extension ❌
This would be flagged by our validation (commented out):
<!-- [Docker Installation](02-quick-start/01-installation/01-docker.md) -->

### Test 4: Link with Fragment Identifier
Link to a specific section:
[S3 API Section](quick-start/reading-writing-data#using-s3-api)

### Test 5: Link to Another Section in Same Page
Self-referencing link to a section:
[Back to Link Format Tests](#link-format-tests)

### Test 6: Cross-version Link Behavior
When viewing this in version 1.0.0, these links should point to 1.0.0 docs.
When viewing in "Next", these should point to "Next" docs.

- [Core Concepts - Architecture](../core-concepts/architecture/overview)
- [Administrator Guide - Start and Stop](../administrator-guide/operations/start-and-stop)

## Expected Behavior

According to [Docusaurus versioning docs](https://docusaurus.io/docs/versioning):

1. **Active version**: Links resolve to the version you're currently viewing
2. **Preferred version**: Falls back to the last version you viewed
3. **Latest version**: Falls back to the default/latest version

## How to Test

1. Build the site: `pnpm build`
2. Serve it: `pnpm serve`
3. Navigate to this page in both:
   - Version 1.0.0 (should be at `/docs/versioning-link-test`)
   - Next version (should be at `/docs/next/versioning-link-test`)
4. Click the links and observe which version they resolve to
