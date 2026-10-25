#!/usr/bin/env bash
# Removes the Social Media Team skills and agents from Claude Code
set -euo pipefail

SKILLS_DIR="$HOME/.claude/skills"
AGENTS_DIR="$HOME/.claude/agents"

for skill in social tiktok-research instagram-research facebook-research youtube-research x-research influencer-seeding social-performance-review; do
    rm -rf "${SKILLS_DIR:?}/$skill" && echo "  ✓ Removed skill: $skill"
done
for agent in content-planner social-trend-scout video-content-analyzer caption-writer community-manager influencer-scout social-qa; do
    rm -f "$AGENTS_DIR/$agent.md" && echo "  ✓ Removed agent: $agent"
done
echo "Social Media Team uninstalled."
