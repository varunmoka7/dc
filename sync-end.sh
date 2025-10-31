#!/bin/bash
# sync-end.sh - Run this at the end of every work session

MESSAGE=${1:-"Work session completed"}

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💾 Ending work session - saving and syncing..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Add all changes
echo "📝 Staging all changes..."
git add -A

echo ""
echo "📊 Changes to be committed:"
git status --short

echo ""
echo "💬 Commit message: $MESSAGE"
echo ""

# Commit with the provided message
if git commit -m "$MESSAGE

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"; then
    echo ""
    echo "⬆️  Pushing to GitHub..."
    if git push; then
        echo ""
        echo "✅ All changes successfully pushed to GitHub!"
        echo "📍 Branch: $(git branch --show-current)"
        echo "💾 Latest commit: $(git log -1 --oneline)"
        echo ""
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo "👋 Session complete. Your other laptop can now sync!"
    else
        echo ""
        echo "⚠️  Push failed. Please check your internet connection."
        echo "Your work is committed locally and safe."
        echo "Try running 'git push' again when connected."
        exit 1
    fi
else
    echo ""
    echo "ℹ️  No changes to commit."
    echo "✅ You're all synced up!"
fi
