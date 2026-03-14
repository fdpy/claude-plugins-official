# Supabase Plugin

[Supabase](https://supabase.com) is an open-source Firebase alternative built on PostgreSQL. This plugin connects Claude Code to Supabase via MCP, letting you manage databases, authentication, storage, and real-time subscriptions directly from your development workflow.

## Setup

### 1. Create a Supabase Account

Sign up at [supabase.com](https://supabase.com) and create a project.

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server connects to `https://mcp.supabase.com/mcp`.

Authentication is handled via your Supabase account OAuth flow on first use.

## Available Tools

Once connected, Claude Code can:

- **Database** — Run SQL queries, manage tables, view schemas, and inspect data
- **Authentication** — Manage users, configure auth providers, and inspect auth state
- **Storage** — Upload, download, and organize files in Supabase Storage buckets
- **Real-time** — Inspect real-time subscription configurations
- **Edge Functions** — Deploy and manage serverless Edge Functions
- **Project Management** — Switch between projects and view project settings

## Example Usage

Ask Claude Code to:
- "Show me all tables in my Supabase database"
- "Run this SQL query against my Supabase project"
- "List all users in Supabase Auth"
- "Upload this file to the `avatars` storage bucket"
- "What are the current RLS policies on the `posts` table?"
- "Deploy this Edge Function to Supabase"

## Working with Multiple Projects

If you have multiple Supabase projects, you can specify which project to use:

```
"Switch to my production Supabase project"
"Use the staging database for this query"
```

## Documentation

For more information, visit the [Supabase documentation](https://supabase.com/docs) or the [Supabase CLI reference](https://supabase.com/docs/reference/cli).
