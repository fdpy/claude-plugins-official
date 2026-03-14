# CLAUDE.md — Claude Code Plugin Marketplace

This file provides essential context for AI assistants working in this repository.

## Repository Overview

This is the **official Claude Code plugin marketplace** — a curated directory of plugins for [Claude Code](https://code.claude.com). It is maintained by Anthropic and contains both internal (Anthropic-authored) plugins and vetted external (community/partner) plugins.

Plugins extend Claude Code with slash commands, autonomous agents, contextual skills, event hooks, and MCP (Model Context Protocol) server integrations.

## Repository Structure

```
claude-plugins-official/
├── .claude-plugin/
│   └── marketplace.json          # Central plugin registry (the source of truth)
├── .github/
│   ├── workflows/
│   │   ├── validate-frontmatter.yml   # CI: validates YAML frontmatter in markdown files
│   │   └── close-external-prs.yml    # CI: restricts internal plugin PRs to Anthropic team
│   └── scripts/
│       └── validate-frontmatter.ts   # TypeScript validation script (run via Bun)
├── plugins/                      # ~30 Anthropic-maintained plugins
│   ├── example-plugin/           # Reference implementation — read this first
│   ├── plugin-dev/               # Plugin authoring toolkit
│   └── [other internal plugins]
├── external_plugins/             # ~14 third-party plugins (GitHub, Stripe, Slack, etc.)
└── README.md
```

## Plugin Component Types

Each plugin lives in its own directory and may contain any combination of:

| Component | Directory | Activated by |
|-----------|-----------|--------------|
| Slash commands | `commands/*.md` | User types `/command-name` |
| Agents | `agents/*.md` | User invokes agent explicitly |
| Skills | `skills/*/SKILL.md` | Automatic context injection |
| Hooks | `hooks/hooks.json` + scripts | Claude Code lifecycle events |
| MCP servers | `.mcp.json` | Tool availability in Claude Code |

### Required Plugin File

Every plugin **must** have `.claude-plugin/plugin.json`:

```json
{
  "name": "plugin-identifier",
  "description": "Short description of what the plugin does.",
  "author": "Author Name or Org",
  "version": "1.0.0",
  "category": "development"
}
```

## Frontmatter Conventions

All markdown components (commands, agents, skills) use YAML frontmatter. CI validates these automatically.

### Commands (`commands/*.md`)

```yaml
---
name: command-name
description: |
  What this command does and when to use it.
argument-hint: <required-arg> [optional-arg]
allowed-tools: [Read, Glob, Grep, Bash, Write, Edit]
---
```

### Agents (`agents/*.md`)

```yaml
---
name: agent-name
description: |
  When to invoke this agent. Include specific trigger phrases and examples.
model: sonnet   # or opus (complex reasoning), haiku (lightweight)
color: magenta  # visual distinction in UI
---
```

### Skills (`skills/skill-name/SKILL.md`)

```yaml
---
description: |
  When this skill activates. List specific keywords and contexts.
  Examples:
  <example>user requests X</example>
---
```

**Required fields by CI:**
- Agents: `name`, `description`
- Skills: `description`
- Commands: `description`

## Naming Conventions

- **Plugin/skill/agent/command names**: `kebab-case` (e.g., `pr-review-toolkit`, `agent-sdk-dev`)
- **Python scripts**: `snake_case` (e.g., `rule_engine.py`, `security_reminder_hook.py`)
- **Environment variables**: `UPPER_SNAKE_CASE` (e.g., `GITHUB_PERSONAL_ACCESS_TOKEN`)
- **Model references**: lowercase short aliases (`sonnet`, `opus`, `haiku`)

## Hook Configuration

Hooks in `hooks/hooks.json` follow this structure:

```json
{
  "description": "What these hooks do",
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash|Write|Edit",
        "hooks": [
          {
            "type": "command",
            "command": "python3 ${CLAUDE_PLUGIN_ROOT}/hooks/check.py",
            "timeout": 10
          }
        ]
      }
    ]
  }
}
```

**Supported hook events**: `PreToolUse`, `PostToolUse`, `Stop`, `SubagentStop`, `SessionStart`, `SessionEnd`, `UserPromptSubmit`, `PreCompact`

## MCP Server Configuration

External service integrations use `.mcp.json`:

```json
{
  "mcpServers": {
    "service-name": {
      "type": "http",
      "url": "https://mcp.service.com/",
      "headers": {
        "Authorization": "Bearer ${SERVICE_API_TOKEN}"
      }
    }
  }
}
```

## Marketplace Registry

`/.claude-plugin/marketplace.json` is the central registry. Every plugin must have an entry here. Plugins are grouped as `"type": "internal"` or `"type": "external"` with a `"path"` (relative for internal) or `"git_url"` (for external).

When adding a new plugin, add an entry to `marketplace.json` and create the plugin directory with at minimum `.claude-plugin/plugin.json` and a `README.md`.

## Development Workflow

### Adding an Internal Plugin

1. Create `plugins/your-plugin-name/`
2. Add `.claude-plugin/plugin.json` with metadata
3. Add components: commands, agents, skills, hooks as needed
4. Add `README.md` documenting usage
5. Register in `/.claude-plugin/marketplace.json`
6. Open a PR — CI will validate frontmatter automatically

### Adding an External Plugin

External plugins are not developed in this repo. Submit via https://clau.de/plugin-directory-submission. Once approved, an Anthropic team member adds the entry to `marketplace.json`.

### CI Validation

- **Frontmatter validation** runs on any PR touching `agents/`, `skills/*/SKILL.md`, or `commands/` files
- Uses **Bun** as the TypeScript runtime (`bun validate-frontmatter.ts`)
- **External PR auto-close**: PRs modifying `plugins/` from non-Anthropic contributors are automatically closed

## Reference Implementation

Before creating a new plugin, read `plugins/example-plugin/` — it demonstrates all supported extension patterns with annotated examples.

For plugin development tooling and best practices, see `plugins/plugin-dev/`.

## Key Constraints

- Only Anthropic employees may contribute to `plugins/` (enforced by CI)
- All markdown frontmatter fields must pass CI validation
- Plugin names in `marketplace.json` must match the `name` field in `.claude-plugin/plugin.json`
- Skills activate automatically based on context; write `description` to be specific about trigger conditions
- MCP server tokens should always reference environment variables, never hardcoded values

## Skill Directory Layout (Complex Skills)

For skills with significant supporting material:

```
skills/skill-name/
├── SKILL.md          # Core activation trigger and instructions
├── README.md         # Human-readable documentation
├── references/       # Background materials, specs, style guides
├── examples/         # Example inputs/outputs
└── scripts/          # Helper scripts used by the skill
```

Keep `SKILL.md` concise — use subdirectories for supplemental content that the skill references as needed.
