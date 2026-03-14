# Security Guidance Plugin

A hook-based plugin that automatically warns about potential security issues whenever Claude Code edits or writes files.

## Overview

The Security Guidance Plugin installs a `PreToolUse` hook that runs a Python security checker before every `Edit`, `Write`, or `MultiEdit` tool call. It surfaces warnings about common vulnerabilities — such as command injection, XSS, and unsafe code patterns — before changes are written to disk.

## How It Works

The hook triggers automatically on file modification tools:

| Event | Tools | Action |
|-------|-------|--------|
| `PreToolUse` | `Edit`, `Write`, `MultiEdit` | Runs `security_reminder_hook.py` |

The script analyzes the pending change and emits warnings if it detects patterns associated with:
- Command injection (e.g., unsanitized shell commands)
- Cross-site scripting (XSS)
- SQL injection
- Other OWASP Top 10 vulnerability patterns

Warnings are shown to Claude before the write completes, giving it an opportunity to reconsider or fix the code.

## Installation

This plugin is included in the Claude Code plugin marketplace and is maintained by Anthropic. No configuration is required — install the plugin and the hook activates automatically.

## Configuration

The hook is defined in `hooks/hooks.json`. The security check script lives at:

```
hooks/security_reminder_hook.py
```

No environment variables or credentials are needed.

## Requirements

- Python 3 available in the environment
- Claude Code with hooks support

## Best Practices

- Keep this plugin enabled in all coding sessions — security checks add minimal overhead
- Treat hook warnings as advisory: Claude may still proceed, but the warning prompts it to verify the code is safe
- Pair with code review practices for defense in depth

## Author

Anthropic

## Version

1.0.0
