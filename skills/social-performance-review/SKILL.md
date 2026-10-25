---
name: social-performance-review
description: Social Media Team weekly learning loop (/social review). Reads the owner's platform exports, compares each post with our benchmarks, finds what worked by pillar, format, hook, platform and language, flags boost candidates for Paid Ads, checks platform policy changes with social-qa, and writes a Learning Update for owner approval. Never edits agent files or guardrails.
---

# Social Performance Review

Run by `content-planner` every week once posts are live. Read `social/references/social-guardrails.md` §9 first.

## Inputs
- Platform exports or screenshots the owner provides (TikTok, Instagram, Facebook, YouTube, X). The team has no analytics access.
- The calendar rows for the week, with post IDs.
- Last week's Learning Update.

## Process
1. **Match** each result to its calendar row by post ID.
2. **Benchmark.** Per platform, compare each post with our own trailing median (start with the first four weeks as the baseline; before that, say "no benchmark yet").
3. **Read the pattern** by pillar, format, hook pattern, length, posting time, and language (English, Taglish, Tagalog). One post is an anecdote; three that agree are a pattern.
4. **Grade each lesson:** A = repeated in our own results 3+ times; B = our results once plus an outside source; C = outside source only; D = hypothesis.
5. **Boost candidates:** posts at 2× or more our platform median in their first 72 hours, with claims cleared by `social-qa`. Send to Paid Ads with the evidence.
6. **Policy watch:** `social-qa` checks AI-label, branded-content and group rules on all five platforms.
7. **Write the Learning Update** with `templates/learning-update.md`: lessons, grades, the exact proposed edits to the knowledge files, and next week's tests. **Don't commit.** The owner approves.

## Rules
- Our numbers stay in Drive. The repo records only lessons, grades and Drive reference IDs.
- Safety beats performance: a post that worked but broke a rule is recorded as "Blocked".
