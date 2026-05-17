# Playwright Plugin

[Playwright](https://playwright.dev) is Microsoft's browser automation library for end-to-end testing. This plugin adds a Playwright MCP server to Claude Code, enabling it to interact with web pages, take screenshots, fill forms, click elements, and run automated browser testing workflows.

## Setup

### 1. Install Node.js

Playwright runs via `npx`. Make sure Node.js (v18+) is installed:

```bash
node --version
```

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server starts automatically via:

```bash
npx @playwright/mcp@latest
```

Playwright browser binaries are downloaded on first use.

## Available Tools

Once connected, Claude Code can:

- **Navigate** — Open URLs and navigate between pages
- **Screenshot** — Capture full-page or element screenshots
- **Click** — Interact with buttons, links, and UI elements
- **Fill Forms** — Type into inputs, select dropdowns, check checkboxes
- **Extract Content** — Read page text, HTML, and element attributes
- **Wait** — Wait for elements, network requests, or page states
- **Run Tests** — Execute Playwright test suites and report results

## Example Usage

Ask Claude Code to:
- "Take a screenshot of the login page"
- "Fill in the registration form with test data and submit it"
- "Check if the submit button is visible and clickable"
- "Run the Playwright test suite and show me which tests failed"
- "Navigate to the dashboard and extract the user count"

## Supported Browsers

Playwright supports Chromium, Firefox, and WebKit (Safari). The MCP server uses Chromium by default.

## Use Cases

- **E2E Testing** — Write and run end-to-end tests for web applications
- **Visual Regression** — Compare screenshots to detect UI changes
- **Manual QA Automation** — Automate repetitive testing workflows
- **Web Scraping** — Extract data from web pages for development purposes

## Documentation

For more information, visit the [Playwright documentation](https://playwright.dev/docs/intro) or the [Playwright MCP repository](https://github.com/microsoft/playwright-mcp).
