#!/usr/bin/env bash
# Installs the Social Media Team skills and agents into Claude Code
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"
AGENTS_DIR="$HOME/.claude/agents"
TEMPLATES_DIR="$HOME/.claude/skills/social/templates"

mkdir -p "$SKILLS_DIR" "$AGENTS_DIR" "$TEMPLATES_DIR"

# Entry point (with references)
mkdir -p "$SKILLS_DIR/social"
cp -R "$SCRIPT_DIR/social/." "$SKILLS_DIR/social/"
cp "$SCRIPT_DIR/COLLABORATION.md" "$SKILLS_DIR/social/COLLABORATION.md"
echo "  ✓ social"

SKILLS=(
    "tiktok-research"
    "instagram-research"
    "facebook-research"
    "youtube-research"
    "x-research"
    "influencer-seeding"
    "social-performance-review"
)
for skill in "${SKILLS[@]}"; do
    mkdir -p "$SKILLS_DIR/$skill"
    cp -R "$SCRIPT_DIR/skills/$skill/." "$SKILLS_DIR/$skill/"
    echo "  ✓ $skill"
done

AGENTS=(
    "content-planner"
    "social-trend-scout"
    "video-content-analyzer"
    "caption-writer"
    "community-manager"
    "influencer-scout"
    "social-qa"
)
for agent in "${AGENTS[@]}"; do
    cp "$SCRIPT_DIR/agents/$agent.md" "$AGENTS_DIR/$agent.md"
    echo "  ✓ $agent"
done

cp -R "$SCRIPT_DIR/templates/." "$TEMPLATES_DIR/"
echo "  ✓ templates"

if [ ! -f "$SCRIPT_DIR/.env" ]; then
    echo "  ! No .env yet: copy .env.example to .env and add your Apify and Gemini keys."
fi
echo "Social Media Team installed. Start with /social."
