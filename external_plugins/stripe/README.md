# Stripe Plugin

[Stripe](https://stripe.com) is a payments infrastructure platform. This plugin adds Stripe-specific commands, skills, and an MCP server to Claude Code, giving you intelligent assistance for payment processing, webhooks, subscriptions, and Stripe API integration.

## Setup

### 1. Create a Stripe Account

Sign up at [stripe.com](https://stripe.com) and get your API keys from the [Stripe Dashboard](https://dashboard.stripe.com/apikeys).

### 2. Install the Plugin

Add this plugin to your Claude Code session. The MCP server connects to `https://mcp.stripe.com` automatically.

## Commands

### `/explain-error [error_code_or_message]`

Explains a Stripe error code or message in plain English with solutions and code examples.

**Usage:**
```bash
/explain-error card_declined
/explain-error "Your card has insufficient funds."
```

**What it provides:**
- Plain English explanation of the error
- Common causes
- Specific solutions and handling recommendations
- Production-ready error handling code
- Related error codes to be aware of
- Link to Stripe documentation

### `/test-cards [scenario]`

Displays Stripe test card numbers for various testing scenarios.

**Usage:**
```bash
/test-cards
/test-cards declined
/test-cards 3dsecure
/test-cards fraud
```

**What it provides:**
- Card numbers organized by scenario
- Expected behavior for each card
- Visual indicators (success / auth required / decline)
- Link to full Stripe testing documentation

## Skills

### Stripe Best Practices (automatic)

The `stripe-best-practices` skill activates automatically when you're working on Stripe integrations. It provides guidance on:

- **Payment processing** — Proper PaymentIntent creation and confirmation flows
- **Checkout** — Stripe Checkout and Elements integration patterns
- **Subscriptions** — Subscription lifecycle, billing, and proration handling
- **Webhooks** — Event verification, idempotency, and retry handling
- **Connect** — Platform and marketplace integration patterns

## MCP Tools

Once connected via MCP, Claude Code can directly access Stripe APIs to:
- Look up charges, customers, and payment methods
- View subscription and invoice details
- Inspect webhook event payloads
- Check API logs and error details

## Example Usage

Ask Claude Code to:
- "Explain Stripe error `insufficient_funds` with a code example"
- "Show me test cards for 3D Secure testing"
- "Help me set up webhook signature verification"
- "What's the correct flow for a subscription with a trial period?"
- "Generate a PaymentIntent creation with proper error handling"

## Requirements

- Node.js (for MCP server)
- A Stripe account (test mode works for development)

## Documentation

For more information, visit the [Stripe documentation](https://docs.stripe.com) or the [Stripe API reference](https://docs.stripe.com/api).

## License

MIT — see [Stripe's AI repository](https://github.com/stripe/ai) for details.
