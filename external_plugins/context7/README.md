# Context7 Plugin

[Context7](https://context7.com) by Upstash pulls version-specific documentation and code examples directly from source repositories into your LLM context. This plugin adds the Context7 MCP server to Claude Code so you always get up-to-date, version-accurate docs without hallucination.

## Setup

### 1. Install Node.js

Context7 runs via `npx`. Make sure Node.js (v18+) is installed:

```bash
node --version
```

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server starts automatically via:

```bash
npx -y @upstash/context7-mcp
```

No API key or account is required for basic usage.

## Available Tools

Once connected, Claude Code can:

- **Resolve library IDs** — Map a library name to its Context7 identifier
- **Fetch documentation** — Pull version-specific docs and code examples for any supported library
- **Get code examples** — Retrieve working examples scoped to the exact version you're using

## Example Usage

Ask Claude Code to:
- "Show me the React 18 docs for useEffect"
- "Get the latest Next.js 14 routing documentation"
- "Find examples for Prisma 5 schema definitions"
- "What changed in Tailwind CSS v4?"

## Why Context7?

LLMs often have outdated or incorrect documentation in their training data. Context7 fetches live, version-specific content directly from source repositories, reducing hallucinations and keeping your code examples accurate.

## Documentation

For more information, visit [context7.com](https://context7.com) or the [GitHub repository](https://github.com/upstash/context7).
