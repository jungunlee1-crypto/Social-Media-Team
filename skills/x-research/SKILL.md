---
name: x-research
description: Social Media Team research skill for X. Finds outliers (posts at 3x or more their account's median views), trending formats, hooks and sounds, category and competitor top posts, and changes on tracked accounts, using Apify X actors. Read-only, public data only. Used by social-trend-scout; feeds the trend digest.
---

# X Research

Run by `social-trend-scout`. Read `social/references/social-guardrails.md` §5 first.

## Tool
Apify X (Twitter) actors approved by the owner, for public posts and search. Token in `.env` as `APIFY_TOKEN`. No logged-in scraping, no private accounts.

## What to collect (public, aggregate only)
- Posts on Philippine sports moments (PBA, UAAP, NCAA, marathons) and taping or prep questions
- Views, likes, reposts, replies, quotes, post date
- Threads that summarise tutorials; reply patterns from sports accounts

## Process

1. **Load** `references/tracked-accounts.md` and `references/search-terms.md`.
2. **Tracked accounts:** pull each account's posts from the date window. Compute the account's median views over its last 30 posts.
3. **Discovery:** search the terms and hashtags; keep posts from the window.
4. **Outliers:** keep posts at 3× or more their account's median, and say the multiple. Note follower count so small-account outliers stand out.
5. **Tag** each keeper: format, hook pattern, pillar it could fit, sound (and whether it's commercial-library), language.
6. **Return** rows for the digest: link, account, post date, views, engagement, multiple, format, hook (quoted, max 15 words), why it might work, fit, and **Unconfirmed** where a number came from a secondary source.

## X-specific notes
X is our smallest channel for this audience (see `platform-playbooks.md`). Spend at most a quarter of a research run's budget here unless `/social review` shows X is earning more. Live sports moments move fast; mark every item with the time, not just the date.

## Cost
Quote the expected cost of the run (credits or Apify compute) before running anything large, and stay inside the cap the owner set.
