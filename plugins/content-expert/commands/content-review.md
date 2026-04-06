---
description: Review and improve content in a file or provided text for clarity, structure, and quality
argument-hint: <file-path-or-text>
allowed-tools: [Read, Glob, Grep]
---

# Content Review

Review and improve the content specified by the user.

The user invoked this command with: $ARGUMENTS

## Instructions

1. If `$ARGUMENTS` is a file path, read the file. Otherwise treat the argument as direct text to review.
2. Analyze the content across these dimensions:
   - **Clarity**: Are sentences clear and concise? Is jargon explained?
   - **Structure**: Is information organized logically with appropriate headings?
   - **Completeness**: Are key concepts covered? Are there obvious gaps?
   - **Tone**: Is the tone appropriate for the intended audience?
   - **Formatting**: Are headings, lists, and code blocks used consistently?
3. Provide a structured review with:
   - A brief summary of the content's strengths
   - Specific issues found, grouped by category
   - Concrete suggestions for each issue
   - An improved version of any sections that need significant rewriting
4. If the user asks for a full rewrite, produce the improved version of the entire document.

## Output Format

```
## Content Review

### Strengths
- <what works well>

### Issues Found

**Clarity**
- Line X: <issue> → Suggestion: <fix>

**Structure**
- <issue> → Suggestion: <fix>

**Other categories as applicable**

### Recommended Revisions
<improved version of flagged sections>
```
