---
name: instagram-research
description: Social Media Team research skill for Instagram. Finds outliers (posts at 3x or more their account's median views), trending formats, hooks and sounds, category and competitor top posts, and changes on tracked accounts, using Apify Instagram actors. Read-only, public data only. Used by social-trend-scout; feeds the trend digest.
---

# Instagram Research

Run by `social-trend-scout`. Read `social/references/social-guardrails.md` §5 first.

## Tool
Apify Instagram actors approved by the owner (public profile, hashtag and Reels scrapers). Token in `.env` as `APIFY_TOKEN`. No logged-in scraping, no private accounts.

## What to collect (public, aggregate only)
- Reels and carousel posts from tracked accounts and hashtags
- Views (Reels), likes, comments, post date, format, carousel slide count
- Audio name for Reels

## Process

1. **Load** `references/tracked-accounts.md` and `references/search-terms.md`.
2. **Tracked accounts:** pull each account's posts from the date window. Compute the account's median views over its last 30 posts.
3. **Discovery:** search the terms and hashtags; keep posts from the window.
4. **Outliers:** keep posts at 3× or more their account's median, and say the multiple. Note follower count so small-account outliers stand out.
5. **Tag** each keeper: format, hook pattern, pillar it could fit, sound (and whether it's commercial-library), language.
6. **Return** rows for the digest: link, account, post date, views, engagement, multiple, format, hook (quoted, max 15 words), why it might work, fit, and **Unconfirmed** where a number came from a secondary source.

## Cost
Quote the expected cost of the run (credits or Apify compute) before running anything large, and stay inside the cap the owner set.
