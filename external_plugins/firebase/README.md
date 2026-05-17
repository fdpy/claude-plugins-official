# Firebase Plugin

[Firebase](https://firebase.google.com) is Google's app development platform. This plugin connects Claude Code to Firebase via MCP, letting you manage Firestore databases, authentication, cloud functions, hosting, and storage directly from your development workflow.

## Setup

### 1. Install the Firebase CLI

```bash
npm install -g firebase-tools
```

### 2. Authenticate

```bash
firebase login
```

### 3. Install the Plugin

Add this plugin to your Claude Code session. The MCP server starts automatically via:

```bash
npx -y firebase-tools@latest mcp
```

### 4. Select a Project

Make sure you're in a directory with a `firebase.json` or initialize one:

```bash
firebase init
```

## Available Tools

Once connected, Claude Code can:

- **Firestore** — Read, write, query, and manage documents and collections
- **Authentication** — List users, manage accounts, and configure auth providers
- **Cloud Functions** — Deploy, invoke, and inspect functions
- **Hosting** — Deploy static assets and manage hosting configurations
- **Storage** — Upload, download, and manage files in Cloud Storage

## Example Usage

Ask Claude Code to:
- "Show me all documents in the `users` Firestore collection"
- "Deploy my cloud functions"
- "List all authenticated users"
- "Upload this file to Firebase Storage"
- "What's the current hosting deployment status?"

## Documentation

For more information, visit the [Firebase documentation](https://firebase.google.com/docs) or the [Firebase CLI reference](https://firebase.google.com/docs/cli).
