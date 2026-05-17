---
name: ppt-creator
description: |
  This skill should be used when the user asks to "create a presentation", "make a PPT",
  "generate slides", "write a slide deck", "make slides about X", "create a Marp presentation",
  "optimize my slides", "improve my presentation", "clean up my PPT content", or "convert
  to Marp format". Handles both generating new slide decks from scratch and refining existing
  Markdown/Marp slide content.
version: 1.0.0
---

# PPT Creator — Marp-Based Presentations

Generate complete Marp slide decks from a topic, or optimize existing slide content for clarity and impact.

## About Marp

[Marp](https://marp.app) converts Markdown into presentation slides. Each slide is separated by `---`. Export to PDF, HTML, or PPTX using the Marp CLI or VS Code extension.

## Workflow: Generating a New Presentation

### Step 1 — Clarify requirements (if not already provided)

Gather the following before writing slides:
- **Topic**: What is the presentation about?
- **Audience**: Who will watch it? (e.g., technical team, executives, students)
- **Slide count**: How many slides? (default: 10–12)
- **Language**: Chinese or English? (match the user's language)
- **Speaker notes**: Include or skip?

### Step 2 — Build the slide structure

Follow this outline for a well-structured deck:

| Slide | Purpose |
|-------|---------|
| 1 | Title slide — topic, subtitle, author, date |
| 2 | Agenda / outline |
| 3–N-2 | Content slides (one key point per slide) |
| N-1 | Summary / key takeaways |
| N | Q&A / Thank you |

### Step 3 — Write the Marp Markdown

Use the template in `assets/template.md` as a starting point. Apply these rules:

- Start every file with the Marp frontmatter block (see template)
- Separate slides with `---`
- Each slide: one main idea, max 5 bullet points, max 10 words per bullet
- Use `**bold**` for key terms
- Use `> quote` for emphasis or key stats
- Add `<!-- Speaker note here -->` after the slide content when notes are requested
- Prefer tables and bullet lists over dense paragraphs

### Step 4 — Save the output

Save the generated deck to a `.md` file. Suggest a filename based on the topic:

```
presentation-[topic-slug].md
```

### Step 5 — Offer export instructions

After generating, always tell the user how to export:

```bash
# Install Marp CLI (one-time)
npm install -g @marp-team/marp-cli

# Export to PDF
marp presentation.md --pdf

# Export to PPTX
marp presentation.md --pptx

# Export to HTML (interactive)
marp presentation.md --html
```

Alternatively, suggest the [Marp for VS Code extension](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) for live preview.

---

## Workflow: Optimizing Existing Slides

When the user provides existing slide content to improve:

1. **Read all slides** — understand the full narrative arc
2. **Check structure** — does it flow logically? Are there missing transitions?
3. **Trim density** — split slides with more than 5 bullet points into two slides
4. **Sharpen language** — replace vague phrases with concrete, active ones
5. **Add Marp formatting** — ensure valid frontmatter and `---` separators
6. **Preserve intent** — do not change the user's facts, opinions, or conclusions
7. **Output the improved version** — show the full revised Markdown

---

## Marp Frontmatter Reference

Minimal valid frontmatter:

```yaml
---
marp: true
theme: default
paginate: true
---
```

Common options:

| Option | Values | Effect |
|--------|--------|--------|
| `theme` | `default`, `gaia`, `uncover` | Visual theme |
| `paginate` | `true` / `false` | Show page numbers |
| `header` | any string | Slide header text |
| `footer` | any string | Slide footer text |
| `backgroundColor` | CSS color | Background color |
| `color` | CSS color | Text color |

For detailed syntax, see `references/marp-syntax.md`.

---

## Content Quality Rules

Apply these to every deck generated or optimized:

- **One idea per slide** — if a slide has two topics, split it
- **Titles are claims**, not labels: "Sales grew 40%" not "Sales Results"
- **Use parallel structure** in bullet lists (all start with a verb, or all are nouns)
- **No walls of text** — if a paragraph is needed, use a quote block or speaker note instead
- **Consistent terminology** — pick one word for each concept and use it throughout

---

## Additional Resources

- **`references/marp-syntax.md`** — Complete Marp Markdown syntax and directives
- **`assets/template.md`** — Ready-to-use Marp slide template
- **`scripts/convert.sh`** — Shell script to export Marp files to PDF/PPTX/HTML
