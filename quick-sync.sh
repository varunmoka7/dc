#!/bin/bash
# quick-sync.sh - Quick sync during work session

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "⚡ Quick sync in progress..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

TIMESTAMP=$(date '+%Y-%m-%d %H:%M')

# Stage all changes
echo "📝 Staging changes..."
git add -A

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "ℹ️  No changes to sync."
    echo ""
    echo "⬇️  Checking for remote changes..."
    git pull
    echo ""
    echo "✅ Already up to date!"
else
    echo ""
    echo "📊 Changes:"
    git status --short

    echo ""
    echo "💬 Committing with timestamp: $TIMESTAMP"

    if git commit -m "Quick sync: $TIMESTAMP

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"; then
        echo ""
        echo "⬇️  Pulling remote changes..."
        if git pull --rebase; then
            echo ""
            echo "⬆️  Pushing to GitHub..."
            if git push; then
                echo ""
                echo "✅ Sync complete!"
                echo "💾 Latest commit: $(git log -1 --oneline)"
            else
                echo ""
                echo "⚠️  Push failed. Your work is safe locally."
                exit 1
            fi
        else
            echo ""
            echo "⚠️  Pull had conflicts. Please resolve manually."
            echo "Run 'git status' to see conflicts."
            exit 1
        fi
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
