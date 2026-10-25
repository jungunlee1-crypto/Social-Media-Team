# Social Media Team

A seven-agent AI social media team for Claude Code. It finds what's working on TikTok, Instagram, Facebook, YouTube and X, breaks down the videos behind it, and turns that into an organic content plan, calendar, captions and community replies for the owner to post. It also builds the micro-influencer seeding list.

- **Pilot brand:** Provex Sports (CE-marked rigid and kinesiology tape, Philippines first). Owner: **Angela Lee**.
- **Works with:** Creative Team (makes the assets), Marketing Suite (campaign plan and brand voice), Paid Ads (boosts winners), Admin (ClickUp tracking). See `COLLABORATION.md`.
- **Status:** DRAFT for owner approval. Nothing has been installed, scraped, posted, or sent.

## The team

| Agent | Job |
|---|---|
| `content-planner` | Lead. Turns trends and the campaign plan into the content plan and calendar, approves every deliverable before the owner sees it, runs the weekly review |
| `social-trend-scout` | Runs the five platform research skills: outliers, trending sounds and formats, competitor top posts, tracked accounts |
| `video-content-analyzer` | Breaks down reference videos: hook, structure, pacing, on-screen text, CTA, why it worked |
| `caption-writer` | Captions in English, Taglish and Tagalog, on-screen hooks, hashtags, X posts and threads |
| `community-manager` | Drafts replies to comments and DMs, flags complaints and risks. The owner sends |
| `influencer-scout` | Micro-influencer seeding: the list of 20 amateur Philippine athletes and coaches, briefs and outreach drafts |
| `social-qa` | Independent check: claims, proof, likeness, AI disclosure, platform rules, language, links and dates |

Approval chain: specialist → `social-qa` → `content-planner` → owner. **The team never posts, schedules, comments, DMs, follows, or spends.** It drafts; the owner publishes.

## Commands

All commands go through `/social` (see `social/SKILL.md`):

| Command | Does |
|---|---|
| `/social trends [platform]` | Trend and outlier digest with links and dates |
| `/social breakdown <url>` | Reference-video breakdown |
| `/social plan <dates>` | Content plan plus calendar rows for the Drive sheet |
| `/social captions <posts>` | Caption sets in three languages, plus X versions |
| `/social replies` | Draft replies to comments and DMs |
| `/social seed` | Micro-influencer list and outreach drafts |
| `/social qa <item>` | QA report |
| `/social review` | Weekly performance review → Learning Update |

## Layout

```
Social-Media-Team/
├── social/SKILL.md                 # /social entry point
│   └── references/                 # Guardrails, platform playbooks, PH calendar, content pillars
├── agents/                         # 7 agents
├── skills/
│   ├── tiktok-research/
│   ├── instagram-research/
│   ├── facebook-research/
│   ├── youtube-research/
│   ├── x-research/
│   ├── influencer-seeding/
│   └── social-performance-review/
├── templates/                      # trend digest, video breakdown, calendar row, captions, outreach, learning update
├── COLLABORATION.md
├── .env.example                    # Apify, Gemini, TubeLab (the real .env is never committed)
├── install.sh / uninstall.sh
└── CLAUDE.md
```

## Install

```bash
cp .env.example .env   # fill in your keys; never commit it
./install.sh           # copies the skills and agents into ~/.claude
```

Needs: an Apify token (Instagram, Facebook, X), a Gemini API key (video breakdowns), the TubeLab connector (YouTube), the TikTok Business connector (TikTok trends), and the Brand Book, Offer Sheet and content calendar in Drive.

## History

The first version of this team (`content-planner` plus the `x-`, `instagram-`, `tiktok-`, `youtube-research` and `video-content-analyzer` skills) lived only on the owner's computer and was never pushed. This repo rebuilds it from the description in Admin-Team's `orchestrator/org-chart.md` (Oct 11, 2026), keeps the same names so partner teams' routing still works, and adds Facebook research, captions, community, influencer seeding and QA. If the original files turn up, merge their platform know-how into the matching skill's `references/`.
