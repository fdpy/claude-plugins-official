# PPT Creator Plugin

Generate polished Marp-based slide decks from any topic, or optimize existing Markdown presentation content — all without leaving Claude Code.

## Overview

The PPT Creator Plugin adds a skill that activates automatically when you ask Claude to create or improve a presentation. It uses [Marp](https://marp.app) — a Markdown-to-slides framework — to produce clean, exportable `.md` files that can be converted to PDF, PPTX, or HTML with a single command.

## Skill

### `ppt-creator` (auto-activates)

**Triggers when you say things like:**
- "Create a presentation about machine learning"
- "Make slides for my quarterly review"
- "Generate a 10-slide deck on climate change for a general audience"
- "Optimize my slides" / "Clean up my PPT content"
- "Convert this to Marp format"

**What it does:**

**Generating new slides:**
1. Clarifies topic, audience, slide count, and language if not provided
2. Builds a logical slide structure (title → agenda → content → summary → Q&A)
3. Writes Marp Markdown with proper frontmatter, one idea per slide
4. Optionally adds speaker notes
5. Saves to a `.md` file and provides export instructions

**Optimizing existing slides:**
1. Reads all existing slide content
2. Checks narrative flow and logical structure
3. Splits dense slides and sharpens language
4. Ensures valid Marp formatting
5. Returns the improved full Markdown

## Included Resources

| File | Purpose |
|------|---------|
| `skills/ppt-creator/SKILL.md` | Core skill instructions |
| `skills/ppt-creator/references/marp-syntax.md` | Complete Marp syntax reference |
| `skills/ppt-creator/assets/template.md` | Ready-to-use Marp slide template |
| `skills/ppt-creator/scripts/convert.sh` | Shell script for PDF/PPTX/HTML export |

## Exporting Slides

### Option 1 — Marp CLI

```bash
# Install (one-time)
npm install -g @marp-team/marp-cli

# Export to PDF
marp presentation.md --pdf

# Export to PPTX (editable in PowerPoint/Keynote)
marp presentation.md --pptx

# Export to HTML (browser-based)
marp presentation.md --html
```

Or use the included script:

```bash
bash skills/ppt-creator/scripts/convert.sh presentation.md pptx ./output
```

### Option 2 — VS Code Extension

Install [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) for live slide preview and one-click export inside the editor.

## Example Usage

```
"Create a 12-slide presentation about the benefits of microservices for a technical audience. Include speaker notes."

"Here are my slides: [paste content]. Clean them up and improve the flow."

"Make a slide deck in Chinese about our Q2 sales results."
```

## Requirements

- No requirements to generate Markdown slides
- [Node.js](https://nodejs.org) + Marp CLI for PDF/PPTX/HTML export

## Author

Anthropic

## Version

1.0.0
