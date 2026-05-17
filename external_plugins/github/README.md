# GitHub Plugin

[GitHub](https://github.com) is the world's leading software development platform. This plugin connects Claude Code to GitHub via the official MCP server, letting you create issues, manage pull requests, review code, search repositories, and access the full GitHub API directly from your terminal.

## Setup

### 1. Create a GitHub Personal Access Token

1. Go to [GitHub Settings → Developer Settings → Personal Access Tokens](https://github.com/settings/tokens)
2. Generate a new token (classic or fine-grained) with the scopes you need:
   - `repo` — Full repository access
   - `issues` — Read/write issues
   - `pull_requests` — Read/write pull requests
3. Copy the token

### 2. Set the Environment Variable

Add to your shell profile (`.bashrc`, `.zshrc`, etc.):

```bash
export GITHUB_PERSONAL_ACCESS_TOKEN="your-token-here"
```

Then reload your shell:

```bash
source ~/.zshrc
```

### 3. Install the Plugin

Add this plugin to your Claude Code session. The MCP server connects to `https://api.githubcopilot.com/mcp/` using your token automatically.

## Available Tools

Once connected, Claude Code can:

- **Issues** — Create, read, update, close, and search issues
- **Pull Requests** — Open PRs, request reviews, merge, and view diffs
- **Repositories** — Search repos, view contents, read files, manage branches
- **Code Review** — Post review comments, approve or request changes
- **Actions** — View workflow runs and job statuses
- **Full API Access** — Any GitHub API operation supported by the MCP server

## Example Usage

Ask Claude Code to:
- "Create a GitHub issue for the bug I just found"
- "Show me the open PRs in this repository"
- "Review PR #42 and post comments on any issues"
- "Search for repositories using this library"
- "What's the status of the latest CI run?"

## Documentation

For more information, visit the [GitHub documentation](https://docs.github.com) or the [GitHub MCP server repository](https://github.com/github/github-mcp-server).
