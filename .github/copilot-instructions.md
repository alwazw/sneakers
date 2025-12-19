# Copilot Instructions for Footlocker Clone Project

## Project Overview
This is an enterprise-grade clone of FootLocker.ca, built with MedusaJS 2.0 (headless backend) and Next.js 15 (SSR storefront) for SEO-critical e-commerce. All infrastructure runs in Docker containers.

## Architecture
- **Backend**: MedusaJS 2.0 handles complex product variants (sizes, colors, widths) out-of-the-box. Avoid v1.x syntax/plugins.
- **Frontend**: Next.js 15 App Router with Tailwind CSS for pixel-perfect UI matching FootLocker.ca.
- **Infrastructure**: Docker Compose with Postgres 16, Redis, MeiliSearch, and Node.js containers.
- **Payments**: Stripe integration for checkout.
- **Testing**: Jest (unit) + Playwright (E2E). Validation scripts must output "SUCCESS" before tasks are marked complete.

## Development Workflow
Follow the "No Middleman" Protocol:
1. Write code and a validation script (e.g., `tests/validate_feature.sh`).
2. Run validation; only mark complete on success.
3. Update `PROJECT_PLAN.md` status: [ ] PENDING → [/] IN_PROGRESS → [V] VALIDATING → [x] VERIFIED.

AI Workflow: Jules codes/tests, user runs, Gemini CLI updates plan based on logs.

## Key Conventions
- **Containerization**: Run everything in Docker; never assume local tools.
- **Validation Law**: No task "done" without passing validation script.
- **File Authority**: `PROJECT_PLAN.md` (progress), `AI_LOG.md` (decisions), `STRATEGY.md` (architecture), `AI_MANDATE.md` (rules).
- **SEO Focus**: Use SSR for product pages; ensure Google-indexable content.

## Examples
- Product seeding: Inject 50 mock sneakers (Nike/Adidas) via script.
- Mega menu: Desktop nav identical to FootLocker.ca.
- Search: MeiliSearch for instant results like "Jordan 1 Red".

Reference: `footlocker-clone/STRATEGY.md` for "why" decisions, `AI_MANDATE.md` for tech stack rules.