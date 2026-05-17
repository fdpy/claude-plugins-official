# Slack Plugin

[Slack](https://slack.com) is a team communication platform. This plugin connects Claude Code to your Slack workspace via MCP, letting you search messages, access channels, read threads, and stay connected with your team's discussions while coding.

## Setup

### 1. Create a Slack Account

Sign up at [slack.com](https://slack.com) or use your existing workspace.

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server connects to `https://mcp.slack.com/mcp`.

Authentication uses OAuth — you'll be prompted to authorize the connection to your Slack workspace on first use.

## Available Tools

Once connected, Claude Code can:

- **Search Messages** — Find relevant discussions across all channels you have access to
- **Read Channels** — Browse channel history and recent messages
- **Read Threads** — Follow conversation threads for full context
- **Find Context** — Surface relevant Slack discussions related to your current task

## Example Usage

Ask Claude Code to:
- "Search Slack for discussions about the authentication bug"
- "Show me recent messages in #backend-team"
- "What did the team decide about the API versioning approach?"
- "Find the thread where we discussed this feature requirement"

## Use Cases

- **Find context** — Look up decisions made in Slack before changing code
- **Research incidents** — Search past incident discussions for patterns
- **Understand requirements** — Find product discussions related to a feature
- **Avoid duplicate work** — Check if a topic was already discussed

## Permissions

The plugin only accesses channels and messages you already have permission to view in Slack. It cannot send messages or modify your workspace.

## Documentation

For more information, visit the [Slack documentation](https://slack.com/help) or the [Slack API documentation](https://api.slack.com).
