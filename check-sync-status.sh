#!/bin/bash
# check-sync-status.sh - Check sync status between local and remote

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Sync Status Check"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Fetch latest without merging
echo "📡 Fetching latest from GitHub..."
git fetch -q

echo ""
echo "🌿 Current Branch: $(git branch --show-current)"
echo ""

# Check local status
echo "📝 Local Status:"
if git diff --quiet && git diff --staged --quiet; then
    echo "   ✅ No uncommitted changes"
else
    echo "   ⚠️  You have uncommitted changes:"
    git status --short | sed 's/^/   /'
fi

echo ""

# Check commits ahead/behind
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u})
BASE=$(git merge-base @ @{u})

if [ "$LOCAL" = "$REMOTE" ]; then
    echo "🔄 Sync Status: ✅ FULLY SYNCED"
    echo "   Your laptop and GitHub are identical"
elif [ "$LOCAL" = "$BASE" ]; then
    echo "🔄 Sync Status: ⬇️  BEHIND REMOTE"
    echo "   GitHub has changes you don't have yet"
    echo "   Run: ./sync-start.sh or 'git pull'"
    echo ""
    echo "   Commits on GitHub you're missing:"
    git log --oneline HEAD..@{u} | sed 's/^/   /'
elif [ "$REMOTE" = "$BASE" ]; then
    echo "🔄 Sync Status: ⬆️  AHEAD OF REMOTE"
    echo "   You have local commits not pushed yet"
    echo "   Run: ./sync-end.sh or 'git push'"
    echo ""
    echo "   Your unpushed commits:"
    git log --oneline @{u}..HEAD | sed 's/^/   /'
else
    echo "🔄 Sync Status: ⚠️  DIVERGED"
    echo "   Both local and remote have different commits"
    echo "   Run: ./quick-sync.sh or 'git pull --rebase'"
    echo ""
    echo "   Your commits:"
    git log --oneline @{u}..HEAD | sed 's/^/   /'
    echo ""
    echo "   Remote commits:"
    git log --oneline HEAD..@{u} | sed 's/^/   /'
fi

echo ""
echo "💾 Latest Local Commit:"
git log -1 --oneline | sed 's/^/   /'

echo ""
echo "💾 Latest Remote Commit:"
git log -1 --oneline @{u} | sed 's/^/   /'

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Recommendations
if [ "$LOCAL" != "$REMOTE" ]; then
    echo "💡 Recommended Actions:"
    if [ "$LOCAL" = "$BASE" ]; then
        echo "   1. Run: ./sync-start.sh"
        echo "   2. Review changes"
        echo "   3. Continue working"
    elif [ "$REMOTE" = "$BASE" ]; then
        echo "   1. Run: ./sync-end.sh 'Your summary'"
        echo "   2. Verify push succeeded"
    else
        echo "   1. Commit any uncommitted changes"
        echo "   2. Run: ./quick-sync.sh"
        echo "   3. Resolve any conflicts if needed"
    fi
    echo ""
fi
