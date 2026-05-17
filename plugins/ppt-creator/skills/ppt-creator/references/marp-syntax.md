# Marp Syntax Reference

## Basic Structure

```markdown
---
marp: true
---

# Slide 1 Title

Content here

---

# Slide 2 Title

More content
```

Every `.md` file for Marp must:
1. Start with `---\nmarp: true\n---`
2. Separate slides with `---` on its own line

---

## Global Directives (in frontmatter)

```yaml
---
marp: true
theme: default          # default | gaia | uncover
paginate: true          # show page numbers
header: "My Header"     # text shown at top of every slide
footer: "My Footer"     # text shown at bottom of every slide
backgroundColor: white  # CSS color for background
color: "#333"           # CSS color for text
size: 16:9              # 16:9 (default) | 4:3 | 1:1
---
```

---

## Local Directives (per-slide)

Place inside an HTML comment on the slide:

```markdown
<!-- _backgroundColor: #1a1a2e -->
<!-- _color: white -->
<!-- _class: lead -->

# Dark Slide Title
```

Prefix with `_` to apply to current slide only. Without `_`, applies to all following slides.

Common local directives:

| Directive | Effect |
|-----------|--------|
| `_backgroundColor` | Override background for this slide |
| `_color` | Override text color |
| `_class: lead` | Center content (title-style layout) |
| `_class: invert` | Invert theme colors |
| `_paginate: false` | Hide page number on this slide |
| `_header: ""` | Override or hide header |
| `_footer: ""` | Override or hide footer |

---

## Speaker Notes

Add a speaker note after slide content using an HTML comment:

```markdown
# My Slide

- Point one
- Point two

<!-- 
Speaker note: Emphasize that point two is the most important takeaway.
Pause here and ask the audience if they have questions.
-->
```

---

## Text Formatting

Standard Markdown applies:

```markdown
**bold text**
*italic text*
~~strikethrough~~
`inline code`
[link text](https://url.com)
```

---

## Lists

```markdown
- Unordered item 1
- Unordered item 2
  - Nested item

1. Ordered item 1
2. Ordered item 2
```

---

## Images

```markdown
![alt text](./image.png)

<!-- Resize -->
![w:400px](./image.png)
![h:300px](./image.png)
![w:400px h:300px](./image.png)

<!-- Background image (full slide) -->
![bg](./background.jpg)
![bg 70%](./background.jpg)        <!-- 70% size -->
![bg left](./image.png)            <!-- left half -->
![bg right:40%](./image.png)       <!-- right 40% -->
```

---

## Tables

```markdown
| Column A | Column B | Column C |
|----------|----------|----------|
| Data 1   | Data 2   | Data 3   |
| Data 4   | Data 5   | Data 6   |
```

---

## Code Blocks

````markdown
```python
def hello():
    print("Hello, World!")
```
````

---

## Math (KaTeX)

```markdown
Inline: $E = mc^2$

Block:
$$
\sum_{i=1}^{n} x_i = \bar{x} \cdot n
$$
```

---

## Multi-Column Layout (HTML)

Marp supports raw HTML for multi-column layouts:

```html
<div class="columns">
<div>

## Left Column

- Point A
- Point B

</div>
<div>

## Right Column

- Point C
- Point D

</div>
</div>
```

Add this CSS to the frontmatter or a style block:

```html
<style>
.columns {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 1rem;
}
</style>
```

---

## Themes

### Built-in Themes

| Theme | Style |
|-------|-------|
| `default` | Clean white, blue accents |
| `gaia` | Dark navy, energetic |
| `uncover` | Minimal, left-aligned |

### Custom CSS

```markdown
---
marp: true
theme: default
---

<style>
h1 { color: #e74c3c; }
section { font-size: 28px; }
</style>

# My Custom Styled Slide
```

---

## Export Commands

```bash
# Install Marp CLI
npm install -g @marp-team/marp-cli

# PDF (best for sharing)
marp slides.md --pdf

# PPTX (editable in PowerPoint/Keynote)
marp slides.md --pptx

# HTML (interactive, works in browser)
marp slides.md --html

# With custom theme
marp slides.md --pdf --theme custom.css

# Specify output filename
marp slides.md --pdf -o output/my-presentation.pdf
```

---

## Common Patterns

### Title Slide

```markdown
---
marp: true
theme: gaia
class: lead
---

# Presentation Title

## Subtitle

**Author Name** | Date
```

### Section Divider Slide

```markdown
---
<!-- _class: lead -->
<!-- _backgroundColor: #2c3e50 -->
<!-- _color: white -->

# Part 2

## Next Section Title
```

### Full-Width Image with Caption

```markdown
---

![bg right:50%](./chart.png)

# Key Finding

The data shows a **40% increase** in Q4.

- Driven by new customer segment
- Seasonal effects ruled out
```
