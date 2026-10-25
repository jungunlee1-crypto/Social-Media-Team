---
name: facebook-research
description: Social Media Team research skill for Facebook. Finds outliers (posts at 3x or more their account's median views), trending formats, hooks and sounds, category and competitor top posts, and changes on tracked accounts, using Apify Facebook actors. Read-only, public data only. Used by social-trend-scout; feeds the trend digest.
---

# Facebook Research

Run by `social-trend-scout`. Read `social/references/social-guardrails.md` §5 first.

## Tool
Apify Facebook actors approved by the owner, for **public Pages and public posts only**. Token in `.env` as `APIFY_TOKEN`. Never scrape groups (even public ones list members), profiles of private people, or anything behind a login.

## What to collect (public, aggregate only)
- Posts and Reels from public Pages: sports brands, leagues, running clubs, PT clinics, sports media
- Reactions, comments, shares, views (video), post date, format, language
- Which formats travel in Filipino sports communities (shares are the key signal on Facebook)

## Process

1. **Load** `references/tracked-accounts.md` and `references/search-terms.md`.
2. **Tracked accounts:** pull each account's posts from the date window. Compute the account's median views over its last 30 posts.
3. **Discovery:** search the terms and hashtags; keep posts from the window.
4. **Outliers:** keep posts at 3× or more their account's median, and say the multiple. Note follower count so small-account outliers stand out.
5. **Tag** each keeper: format, hook pattern, pillar it could fit, sound (and whether it's commercial-library), language.
6. **Return** rows for the digest: link, account, post date, views, engagement, multiple, format, hook (quoted, max 15 words), why it might work, fit, and **Unconfirmed** where a number came from a secondary source.

## Facebook groups
Groups matter in the Philippines, but this skill never reads or joins them. If the owner shares what's working in a group they belong to, treat it as owner-supplied data and don't store members' names or posts.

## Cost
Quote the expected cost of the run (credits or Apify compute) before running anything large, and stay inside the cap the owner set.
