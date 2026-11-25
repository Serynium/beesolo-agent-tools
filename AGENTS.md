# beesolo agent tools

This repository documents beesolo’s public API, MCP servers, and agent skills. Check the [live OpenAPI specification](https://beesolo.app/openapi.json) and [MCP server cards](https://beesolo.app/mcp) before changing endpoint examples.

- Use anonymous reads and URLs on `beesolo.app`.
- Use a published slug supplied by the professional for a positive booking-page lookup. Use an unpublished slug to verify the structured `NOT_FOUND` response.
- Check each changed script with `sh -n path/to/script.sh`, then run the changed example against the live endpoint.
- Preserve each skill’s `name` and `description` frontmatter and keep instructions grounded in the live product.
