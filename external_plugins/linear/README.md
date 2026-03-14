# Linear Plugin

[Linear](https://linear.app) is a modern issue tracker built for software teams. This plugin connects Claude Code to Linear via MCP, letting you create issues, manage projects, update statuses, and search across workspaces without leaving your terminal.

## Setup

### 1. Create a Linear Account

Sign up at [linear.app](https://linear.app) if you don't already have one.

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server connects to `https://mcp.linear.app/mcp`.

Authentication is handled through Linear's OAuth flow when you first connect — no manual token setup required.

## Available Tools

Once connected, Claude Code can:

- **Issues** — Create, update, assign, and close issues
- **Projects** — View project roadmaps and manage milestones
- **Status Updates** — Change issue states (todo, in progress, done, cancelled)
- **Search** — Find issues across teams and workspaces
- **Comments** — Add comments and discussion to issues

## Example Usage

Ask Claude Code to:
- "Create a Linear issue for the bug I just found"
- "What issues are assigned to me?"
- "Move issue LIN-123 to in progress"
- "Search for issues related to authentication"
- "Show me all issues in the current sprint"

## Workflow Integration

Linear works well alongside code changes — create issues when you discover bugs, update status as you fix them, and close issues when merged.

```bash
# Typical workflow:
# 1. Discover a bug while coding
# "Create a Linear issue: Login fails when email has uppercase letters"
# 2. Fix the bug
# "Mark issue LIN-456 as done"
```

## Documentation

For more information, visit the [Linear documentation](https://linear.app/docs) or the [Linear API reference](https://developers.linear.app/docs).
