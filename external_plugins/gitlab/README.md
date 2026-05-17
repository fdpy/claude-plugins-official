# GitLab Plugin

[GitLab](https://gitlab.com) is a comprehensive DevOps platform. This plugin connects Claude Code to GitLab via MCP, giving you full access to repositories, merge requests, CI/CD pipelines, issues, and wikis without leaving your terminal.

## Setup

### 1. Get a GitLab Personal Access Token

1. Go to your [GitLab profile settings](https://gitlab.com/-/profile/personal_access_tokens)
2. Create a new token with the scopes you need:
   - `api` — Full API access
   - `read_repository` — Repository read access
   - `write_repository` — Repository write access
3. Copy the token

### 2. Set the Environment Variable

Add to your shell profile (`.bashrc`, `.zshrc`, etc.):

```bash
export GITLAB_PERSONAL_ACCESS_TOKEN="your-token-here"
```

Then reload your shell:

```bash
source ~/.zshrc
```

### 3. Install the Plugin

Add this plugin to your Claude Code session. The MCP server connects to `https://gitlab.com/api/v4/mcp` automatically.

## Available Tools

Once connected, Claude Code can:

- **Repositories** — Browse, search, and manage repository contents
- **Merge Requests** — Create, review, approve, and merge MRs
- **CI/CD Pipelines** — View pipeline status, job logs, and trigger runs
- **Issues** — Create, update, assign, and close issues
- **Wikis** — Read and update project wikis

## Example Usage

Ask Claude Code to:
- "Show me the open merge requests in this project"
- "Create a GitLab issue for this bug"
- "What's the status of the latest pipeline on main?"
- "Approve MR !123 and add a comment"
- "List failed jobs in the last pipeline run"

## Self-Hosted GitLab

If you use a self-hosted GitLab instance, update the MCP URL in `.mcp.json` to point to your instance:

```
https://your-gitlab.company.com/api/v4/mcp
```

## Documentation

For more information, visit the [GitLab documentation](https://docs.gitlab.com) or the [GitLab API reference](https://docs.gitlab.com/ee/api/).
