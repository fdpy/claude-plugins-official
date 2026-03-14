---
name: content-expert
description: This skill should be used when the user asks to "write documentation", "improve writing", "review content", "write a README", "create a blog post", "write technical docs", "improve prose", "edit writing", "polish content", "write release notes", "draft announcement", or asks for help with any written content creation or improvement task.
version: 1.0.0
---

# Content Expert

A skill for creating, reviewing, and improving written content including documentation, technical writing, blog posts, READMEs, and announcements.

## When This Skill Applies

Activate this skill when the user needs help with:
- Writing or improving documentation (API docs, user guides, tutorials)
- Creating or refining README files
- Drafting blog posts or technical articles
- Writing release notes or changelogs
- Composing announcements or communications
- Reviewing and editing existing written content
- Improving clarity, structure, or tone of prose
- Adapting content for different audiences

## Content Creation Principles

### Clarity First
- Use plain language; avoid unnecessary jargon
- Define technical terms when first introduced
- Write short sentences and focused paragraphs
- Lead with the most important information

### Structure and Organization
- Use headings to guide readers through content
- Break complex topics into logical sections
- Use lists for enumerable items (3+ items)
- Include a table of contents for long documents

### Audience Awareness
- Identify the target audience before writing
- Adjust technical depth to match reader expertise
- Use examples that resonate with the audience's context
- Anticipate common questions and address them proactively

### Tone and Voice
- Match the tone to the context (formal docs vs. friendly blog post)
- Be direct and confident; avoid hedging language
- Use active voice over passive voice
- Keep consistent voice throughout a document

## Content Review Process

When reviewing existing content:

1. **Assess structure**: Is information organized logically? Does it have a clear introduction and conclusion?
2. **Check clarity**: Are sentences clear and concise? Is jargon explained?
3. **Verify accuracy**: Are technical claims correct? Are code examples valid?
4. **Evaluate completeness**: Are key concepts covered? Are edge cases addressed?
5. **Review tone**: Does the tone match the intended audience?
6. **Check formatting**: Are headings, lists, and code blocks used consistently?

## Documentation Types

### README Files
Essential sections:
- Project name and one-line description
- Badges (build status, version, license)
- Quick start / installation
- Usage examples
- Configuration options
- Contributing guidelines
- License

### API Documentation
Essential sections:
- Authentication
- Base URL and versioning
- Endpoint reference (method, path, parameters, response)
- Error codes and handling
- Rate limits
- Code examples in multiple languages

### Tutorials and Guides
Essential structure:
- Prerequisites
- Learning objectives
- Step-by-step instructions with code
- Verification steps
- Troubleshooting
- Next steps

### Release Notes / Changelogs
Follow [Keep a Changelog](https://keepachangelog.com/) format:
- Version and date header
- Categories: Added, Changed, Deprecated, Removed, Fixed, Security
- User-facing language (not internal commit messages)
- Links to relevant issues or PRs

## Writing Improvement Checklist

When improving existing content:
- [ ] Remove filler words ("very", "really", "just", "basically")
- [ ] Replace passive voice with active voice
- [ ] Break up long sentences (>25 words)
- [ ] Consolidate redundant sections
- [ ] Add missing examples or code snippets
- [ ] Verify all links and references work
- [ ] Ensure consistent terminology throughout
- [ ] Check heading hierarchy (H1 > H2 > H3)

## Examples

### Before (weak)
> The function that is being used here is basically just a simple utility that can be used in order to parse the input that is provided by the user.

### After (strong)
> `parseInput()` validates and transforms user-provided data into the expected format.

### Before (passive)
> An error will be thrown if the parameter is missing.

### After (active)
> The function throws an error if the parameter is missing.
