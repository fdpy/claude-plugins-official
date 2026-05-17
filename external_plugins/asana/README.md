# Asana Plugin

[Asana](https://asana.com) is a work management platform. This plugin connects Claude Code to Asana via MCP, letting you create and manage tasks, search projects, update assignments, and track progress without leaving your terminal.

## Setup

### 1. Create an Asana Account

Sign up at [asana.com](https://asana.com) if you don't already have one.

### 2. Enable the MCP Server

The plugin uses Asana's official MCP server at `https://mcp.asana.com/sse`. Authentication is handled through Asana's OAuth flow when you first connect.

### 3. Install the Plugin

Add this plugin to your Claude Code session. The MCP server will be available automatically.

## Available Tools

Once connected, Claude Code can:

- **Create tasks** — Add new tasks to projects with titles, descriptions, due dates, and assignees
- **Search projects** — Find projects and tasks by name or keyword
- **Update assignments** — Reassign tasks or change due dates
- **Track progress** — View task statuses and project completion

## Example Usage

Ask Claude Code to:
- "Create an Asana task for the bug I just fixed"
- "What tasks are assigned to me in the frontend project?"
- "Mark task #12345 as complete"
- "Search Asana for tasks related to authentication"

## Documentation

For more information, visit [asana.com/guide](https://asana.com/guide) or the [Asana API documentation](https://developers.asana.com/docs).
