#!/bin/bash
# sync-start.sh - Run this at the start of every work session

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔄 Starting work session - syncing with remote..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Fetch latest changes
echo "📡 Fetching latest changes from GitHub..."
git fetch

echo ""
echo "📊 Current status:"
git status

echo ""
echo "⬇️  Pulling latest changes..."
if git pull; then
    echo ""
    echo "✅ Ready to work!"
    echo "📍 Current branch: $(git branch --show-current)"
    echo "💾 Latest commit: $(git log -1 --oneline)"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
    echo ""
    echo "⚠️  Pull had issues. Please resolve any conflicts."
    echo "Run 'git status' to see what needs attention."
    exit 1
fi
