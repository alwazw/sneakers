# AI DEVELOPMENT MANDATE & OPERATING PROTOCOL

## 1. OBJECTIVE
**Goal:** Build a production-grade, pixel-perfect clone of FootLocker.ca.
**Standard:** "Enterprise Ready" (Security, Scalability, SEO, Accessibility).
**Environment:** Ubuntu (Host) -> Docker (Runtime).

## 2. THE TECH STACK (NON-NEGOTIABLE)
- **Backend:** MedusaJS 2.0 (Node.js + Express based).
- **Database:** PostgreSQL 16 (Dockerized).
- **Cache:** Redis (Dockerized).
- **Storefront:** Next.js 15 (App Router) + Tailwind CSS.
- **Testing:** Jest (Unit) + Playwright (E2E).

## 3. THE "NO MIDDLEMAN" PROTOCOL
- **Validation is Law:** You may NOT mark a task "Complete" until a validation script has run and output "SUCCESS".
- **Self-Healing:** If a validation script fails, YOU (The AI) must analyze the log and fix the code. Do not ask the user to debug.
- **Containerization:** All services must run in Docker. Never assume local tools exist on the host.

## 4. FILE AUTHORITY
- `PROJECT_PLAN.md`: The absolute source of truth for progress.
- `AI_LOG.md`: The persistent memory of decisions and blockers.
- `STRATEGY.md`: The architectural decisions and "why" we made them.