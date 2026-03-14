# Serena Plugin

[Serena](https://github.com/oraios/serena) by Oraios is a semantic code analysis MCP server that provides intelligent code understanding, refactoring suggestions, and codebase navigation through Language Server Protocol (LSP) integration.

## Overview

Serena connects to language servers to provide deep semantic understanding of your code — going beyond text search to understand types, references, definitions, and symbols across your entire codebase.

## Setup

### 1. Install `uv`

Serena is distributed via `uvx`. Install `uv` if you don't have it:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server starts automatically via:

```bash
uvx --from git+https://github.com/oraios/serena serena start-mcp-server
```

### 3. Configure Language Support

Serena uses LSP to provide language-aware analysis. Make sure the relevant language servers are installed for your project's languages (e.g., `pyright` for Python, `typescript-language-server` for TypeScript).

## Available Tools

Once connected, Claude Code can:

- **Find Definitions** — Jump to where a symbol is defined, even across files
- **Find References** — Locate all usages of a function, class, or variable
- **Refactoring** — Rename symbols safely across the entire codebase
- **Code Understanding** — Explain complex code with full type and reference context
- **Codebase Navigation** — Explore project structure semantically

## Example Usage

Ask Claude Code to:
- "Find all usages of the `authenticate` function"
- "Where is the `UserRepository` class defined?"
- "Rename `fetchData` to `loadUserData` across the entire project"
- "What does this function do and what calls it?"
- "Show me the call chain leading to this error"

## Why Serena?

Standard text search finds strings — Serena understands semantics. It knows the difference between a variable named `status` in one module versus another, making refactoring and code navigation far more accurate.

## Documentation

For more information, visit the [Serena GitHub repository](https://github.com/oraios/serena).
