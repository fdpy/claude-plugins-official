# Code Simplifier Plugin

An autonomous agent that reviews recently modified code and simplifies it for clarity, consistency, and maintainability — without changing functionality.

## Overview

The Code Simplifier Plugin runs an Opus-powered agent that analyzes changed code and applies targeted refinements. It focuses on making code easier to read and maintain while strictly preserving all existing behavior.

## Agent

### `code-simplifier`

Automatically reviews and refines code after changes.

**What it does:**
1. Identifies recently modified files
2. Analyzes code for clarity, consistency, and maintainability issues
3. Applies project-specific standards (e.g., ES modules, React patterns)
4. Simplifies without altering functionality or introducing regressions

**Refinements applied:**
- Removes unnecessary complexity and redundant logic
- Applies consistent naming and formatting patterns
- Improves code readability without changing behavior
- Enforces project-level conventions visible in the codebase
- Keeps scope focused — avoids unrelated "improvements"

**Usage:**

Invoke the agent explicitly when you want a simplification pass after making changes:

```
code-simplifier
```

Or reference it in context:

```
Run the code-simplifier agent on the files I just edited
```

**Example workflow:**
```bash
# After implementing a feature:
# 1. Run code-simplifier to clean up
# 2. Review the proposed changes
# 3. Accept or adjust as needed
```

## Installation

This plugin is included in the Claude Code plugin marketplace and is maintained by Anthropic.

## Best Practices

- Run after completing a feature or bug fix, not during active development
- Review all simplifications before committing — the agent preserves intent but human review is always recommended
- Works best on focused, self-contained changes rather than large-scale rewrites

## Requirements

- Claude Code with agent support
- Opus model access (used for complex reasoning during simplification)

## Author

Anthropic

## Version

1.0.0
